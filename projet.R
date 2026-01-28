# ============================================================================
# PROJET : Impact des chocs pétroliers sur le risque de défaut souverain
#          Nigeria (2010-2024) - RENDEMENTS OBLIGATIONS 10 ANS
# AUTEUR : Saleh Ben Haliki Youssouf
# DATE   : Janvier 2025
# ============================================================================

library(dplyr)
library(tidyr)
library(lubridate)
library(tempdisagg)
library(zoo)
library(writexl)
library(readxl)
library(tidyverse)
library(ggplot2)
library(tseries)

rep <- '/Users/youss/Documents/Cour Maserati /Memoire /Base de données'
setwd(rep)

# Palette de couleurs
color_primary <- "#2E86AB"
color_secondary <- "#A23B72"
color_tertiary <- "#F18F01"

# ============================================================================
# FONCTIONS HELPER
# ============================================================================

# Fonction pour créer le format de date standardisé "YYYY-Q#"
create_date_label <- function(year, quarter) {
  return(paste0(year, "-Q", quarter))
}

# Fonction pour convertir "2010-Q1" en date pour les graphiques
parse_quarter_date <- function(date_string) {
  as.Date(as.yearqtr(date_string, format = "%Y-Q%q"))
}

# ============================================================================
# SECTION 1 : VARIABLE DÉPENDANTE - SPREAD OBLIGATIONS 10 ANS
# ============================================================================

# ----------------------------------------------------------------------------
# 1.1 Rendements Nigeria 10 ans (Source: Investing.com)
# ----------------------------------------------------------------------------

nigeria_10y <- read_csv('/Users/youss/Downloads/Nigeria 10-Year Bond Yield Historical Data.csv') %>%
  mutate(
    Date = mdy(Date),
    year = year(Date),
    quarter = quarter(Date)
  ) %>%
  filter(year >= 2010, year <= 2024) %>%
  group_by(year, quarter) %>%
  summarise(yield_nigeria_10y = mean(Price, na.rm = TRUE), .groups = 'drop') %>%
  mutate(date = create_date_label(year, quarter)) %>%
  select(date, yield_nigeria_10y)

# ----------------------------------------------------------------------------
# 1.2 Rendements USA 10 ans (Source: FRED)
# ----------------------------------------------------------------------------

usa_10y <- read_excel("/Users/youss/Downloads/GS10.xlsx", sheet = 2) %>%
  rename(Date = observation_date, Yield = GS10) %>%
  mutate(
    Date = ymd(Date),
    year = year(Date),
    quarter = quarter(Date)
  ) %>%
  filter(year >= 2010, year <= 2024) %>%
  group_by(year, quarter) %>%
  summarise(yield_usa_10y = mean(Yield, na.rm = TRUE), .groups = 'drop') %>%
  mutate(date = create_date_label(year, quarter)) %>%
  select(date, yield_usa_10y)

# ----------------------------------------------------------------------------
# 1.3 Calcul du Spread
# ----------------------------------------------------------------------------

spread_10y <- nigeria_10y %>%
  inner_join(usa_10y, by = "date") %>%
  mutate(spread_10y = yield_nigeria_10y - yield_usa_10y) %>%
  arrange(date)

cat("Observations spread 10Y:", nrow(spread_10y), "\n")
cat("Période:", min(spread_10y$date), "à", max(spread_10y$date), "\n")
cat("Moyenne spread:", round(mean(spread_10y$spread_10y), 2), "%\n")
cat("Écart-type:", round(sd(spread_10y$spread_10y), 2), "%\n")
cat("Maximum:", round(max(spread_10y$spread_10y), 2), "%\n")
cat("Mininum:", round(min(spread_10y$spread_10y), 2), "%\n")

# Graphique
ggplot(spread_10y, aes(x = parse_quarter_date(date), y = spread_10y)) +
  geom_line(color = "#D62828", linewidth = 1.2) +
  geom_hline(yintercept = 0, linetype = "dashed", color = "gray50") +
  scale_x_date(date_labels = "%Y", date_breaks = "2 years") +
  labs(
    title = "Spread Obligations 10 ans Nigeria - USA (2010-2024)",
    subtitle = "Mesure du risque souverain",
    x = "Année",
    y = "Spread (points de pourcentage)"
  ) +
  theme_minimal() +
  theme(plot.title = element_text(face = "bold", size = 14))

ggplot(spread_10y, aes(y = spread_10y)) +
  geom_boxplot(fill = "#D62828", alpha = 0.6) +
  labs(title = "Distribution Spread", y = "Spread (pp)") +
  theme_minimal() +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank())

# ============================================================================
# SECTION 2 : VARIABLES PÉTROLIÈRES (2010-2024)
# ============================================================================

cat("\n=== SECTION 2 : VARIABLES PÉTROLIÈRES ===\n")

# ----------------------------------------------------------------------------
# 2.1 Production de pétrole (Source: Central Bank of Nigeria)
# ----------------------------------------------------------------------------

cbn_prod_nigeria <- read_excel('/Users/youss/Downloads/CRUDEOILDATACBN.xlsx')

nigeria_prod_trim_10_24 <- cbn_prod_nigeria %>%
  mutate(
    domProd = as.numeric(domProd),
    quarter = (tmonth - 1) %/% 3 + 1
  ) %>%
  filter(tyear >= 2010, tyear <= 2024) %>%
  group_by(year = tyear, quarter) %>%
  summarise(prod_mbpd = mean(domProd, na.rm = TRUE), .groups = 'drop') %>%
  mutate(date = create_date_label(year, quarter)) %>%
  select(date, prod_mbpd)

# ----------------------------------------------------------------------------
# 2.2 Exportations de pétrole (Source: Central Bank of Nigeria)
# ----------------------------------------------------------------------------

nigeria_export_trim_10_24 <- cbn_prod_nigeria %>%
  mutate(
    crudeOilExp = as.numeric(crudeOilExp),
    quarter = (tmonth - 1) %/% 3 + 1
  ) %>%
  filter(tyear >= 2010, tyear <= 2024) %>%
  group_by(year = tyear, quarter) %>%
  summarise(export_mbpd = mean(crudeOilExp, na.rm = TRUE), .groups = 'drop') %>%
  mutate(date = create_date_label(year, quarter)) %>%
  select(date, export_mbpd)

# ----------------------------------------------------------------------------
# 2.3 Prix du pétrole Brent (Source: Central Bank of Nigeria)
# ----------------------------------------------------------------------------

# Prix nominal
prix_brent_10_24 <- cbn_prod_nigeria %>%
  mutate(
    crudeOilPrice = as.numeric(crudeOilPrice),
    quarter = (tmonth - 1) %/% 3 + 1
  ) %>%
  filter(tyear >= 2010, tyear <= 2024) %>%
  group_by(year = tyear, quarter) %>%
  summarise(crudeOilPrice = mean(crudeOilPrice, na.rm = TRUE), .groups = 'drop') %>%
  mutate(date = create_date_label(year, quarter)) %>%
  select(date, crudeOilPrice)

# Graphique Prix Brent
ggplot(prix_brent_10_24, aes(x = parse_quarter_date(date), y = crudeOilPrice)) +
  geom_line(color = color_primary, linewidth = 1) +
  scale_x_date(date_labels = "%Y", date_breaks = "3 years") +
  labs(title = "Prix du pétrole Brent (2010-2024)",
       x = "Année", y = "Prix (USD/baril)") +
  theme_minimal()

# Boxplot Prix Brent
ggplot(prix_brent_10_24, aes(y = crudeOilPrice)) +
  geom_boxplot(fill = color_primary, alpha = 0.6) +
  labs(title = "Distribution Prix Brent", y = "Prix (USD/baril)") +
  theme_minimal() +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank())

# CPI données IMF base 100
CPI_nigeria_imf <- read_csv("/Users/youss/Downloads/CPI.csv")

nigeria_cpi_10_24 <- CPI_nigeria_imf %>%
  pivot_longer(
    cols = starts_with("20"), 
    names_to = "date", 
    values_to = "CPI"
  ) %>%
  select(date, CPI)

# Prix réel
prix_réel_10_24 <- prix_brent_10_24 %>%
  mutate(prix_réel = crudeOilPrice / nigeria_cpi_10_24$CPI * 100) %>%
  select(date, prix_réel)

# Graphique Prix réel
ggplot(prix_réel_10_24, aes(x = parse_quarter_date(date), y = prix_réel)) +
  geom_line(color = color_secondary, linewidth = 1) +
  scale_x_date(date_labels = "%Y", date_breaks = "3 years") +
  labs(title = "Prix du pétrole réel Nigeria (2010-2024)",
       x = "Année", y = "Prix (USD/baril)") +
  theme_minimal()

# ----------------------------------------------------------------------------
# 2.4 Revenus pétroliers
# ----------------------------------------------------------------------------

# Revenus nominaux
nigeria_revenus_petroliers_10_24 <- prix_brent_10_24 %>%
  inner_join(nigeria_export_trim_10_24, by = "date") %>%
  mutate(
    year = as.numeric(substr(date, 1, 4)),
    quarter = as.numeric(substr(date, 7, 7)), 
    nb_jours = case_when(
      quarter == 1 ~ ifelse(leap_year(year), 91, 90),
      quarter == 2 ~ 91,
      quarter == 3 ~ 92,
      quarter == 4 ~ 92
    ),
    revenus_trim_MUSD_nominal = crudeOilPrice * export_mbpd * nb_jours
  ) %>%
  select(date, revenus_trim_MUSD_nominal)

# Revenus réels
nigeria_revenus_petroliers_réels_10_24 <- prix_réel_10_24 %>%
  inner_join(nigeria_export_trim_10_24, by = "date") %>%
  mutate(
    year = as.numeric(substr(date, 1, 4)),
    quarter = as.numeric(substr(date, 7, 7)),
    nb_jours = case_when(
      quarter == 1 ~ ifelse(leap_year(year), 91, 90),
      quarter == 2 ~ 91,
      quarter == 3 ~ 92,
      quarter == 4 ~ 92
    ),
    revenus_trim_MUSD_réel = prix_réel * export_mbpd * nb_jours
  ) %>%
  select(date, revenus_trim_MUSD_réel)

# ----------------------------------------------------------------------------
# 2.5 Part de production du Nigeria
# ----------------------------------------------------------------------------

# Données OPEP
opep_prod <- read_excel("/Users/youss/Downloads/CRUDEOILPRODUCTIONOPEP.xlsx", skip = 2)

# Production mondiale totale
opep_world <- opep_prod %>%
  slice(60)

# Production mondiale totale trimestrielle (2010-2024)
opep_world_10_24 <- opep_world %>%
  select(all_of(as.character(2010:2024))) %>%
  pivot_longer(cols = everything(), names_to = "Year", values_to = "Value") %>%
  crossing(Quarter = 1:4) %>%
  mutate(
    year = as.numeric(Year),
    quarter = Quarter,
    date = create_date_label(year, quarter),
    Prod = Value / 100
  ) %>%
  select(date, Prod)
opep_world_10_24 <- opep_world_10_24 %>%
  rename(Prod_World=Prod)

# Production des pays membres de l'OPEP
opep_membre <- opep_prod %>%
  slice(62)

# Production totale des pays membres (2010-2024)
opep_membre_10_24 <- opep_membre %>%
  select(all_of(as.character(2010:2024))) %>%
  pivot_longer(cols = everything(), names_to = "Year", values_to = "Value") %>%
  crossing(Quarter = 1:4) %>%
  mutate(
    year = as.numeric(Year),
    quarter = Quarter,
    date = create_date_label(year, quarter),
    Prod = Value / 100
  ) %>%
  select(date, Prod)
opep_membre_10_24 <- opep_membre_10_24%>%
  rename(Prod_opep = Prod) 
  

# Part du Nigeria dans la production mondiale et OPEP
nigeria_part_prod_10_24 <- nigeria_prod_trim_10_24 %>%
  inner_join(opep_world_10_24, by = "date", suffix = c("_nigeria", "_world")) %>%
  inner_join(opep_membre_10_24, by = "date") %>%
  mutate(
    part_mondiale = (prod_mbpd / Prod_World) * 100,
    part_opep = (prod_mbpd / Prod_opep) * 100
  ) %>%
  select(date, part_mondiale, part_opep)

# Graphiques de la part mondiale et OPEP
ggplot(nigeria_part_prod_10_24, aes(x = parse_quarter_date(date), y = part_mondiale)) +
  geom_line(color = color_secondary, linewidth = 1.2) +
  scale_x_date(date_labels = "%Y", date_breaks = "2 years") +
  labs(
    title = "Part de la production pétrolière du Nigeria dans la production mondiale",
    subtitle = "Période 2010-2024",
    x = "Année", 
    y = "Part (%)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    plot.subtitle = element_text(size = 11),
    axis.title = element_text(size = 11),
    axis.text = element_text(size = 10)
  )

ggplot(nigeria_part_prod_10_24, aes(x = parse_quarter_date(date), y = part_opep)) +
  geom_line(color = color_primary, linewidth = 1.2) +
  scale_x_date(date_labels = "%Y", date_breaks = "2 years") +
  labs(
    title = "Part de la production pétrolière du Nigeria dans la production mondiale des pays membre de l'OPEP",
    subtitle = "Période 2010-2024",
    x = "Année", 
    y = "Part (%)"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    plot.subtitle = element_text(size = 11),
    axis.title = element_text(size = 11),
    axis.text = element_text(size = 10)
  )

# ============================================================================
# SECTION 3 : VARIABLES MACROÉCONOMIQUES (2010-2024)
# ============================================================================

# ----------------------------------------------------------------------------
# 3.1 Taux de change Naira/USD (Source: FMI)
# ----------------------------------------------------------------------------

ERNaira_USD <- read_csv('/Users/youss/Downloads/ER.csv')

taux_change_10_24 <- ERNaira_USD %>%
  filter(TYPE_OF_TRANSFORMATION == "Period average") %>%
  select(matches("^[12][0-9]{3}-Q[1-4]")) %>%
  pivot_longer(everything(), names_to = "date_raw", values_to = "taux_change") %>%
  mutate(
    year = as.numeric(substr(date_raw, 1, 4)),
    quarter = as.numeric(substr(date_raw, 7, 7)),
    date = create_date_label(year, quarter)
  ) %>%
  filter(year >= 2010, year <= 2024, !is.na(taux_change)) %>%
  select(date, taux_change)

# Graphique + Boxplot Taux de change
ggplot(taux_change_10_24, aes(x = parse_quarter_date(date), y = taux_change)) +
  geom_line(color = color_secondary, linewidth = 1) +
  scale_x_date(date_labels = "%Y", date_breaks = "5 years") +
  labs(title = "Taux de change Naira/USD (2010-2024)",
       x = "Année", y = "NGN/USD") +
  theme_minimal()

ggplot(taux_change_10_24, aes(y = taux_change)) +
  geom_boxplot(fill = color_secondary, alpha = 0.6) +
  labs(title = "Distribution Taux change", y = "NGN/USD") +
  theme_minimal() +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank())

# ----------------------------------------------------------------------------
# 3.2 Inflation CPI (Source: Central Bank of Nigeria)
# ----------------------------------------------------------------------------

inflation_cbn <- read_excel("/Users/youss/Downloads/Inflation_Data_in_Excel.xlsx")

nigeria_inflation_10_24 <- inflation_cbn %>%
  mutate(
    allItemsYearOn = as.numeric(gsub(",", ".", allItemsYearOn)),
    quarter = case_when(
      tmonth %in% 1:3 ~ 1,
      tmonth %in% 4:6 ~ 2,
      tmonth %in% 7:9 ~ 3,
      tmonth %in% 10:12 ~ 4
    )
  ) %>%
  filter(tyear >= 2010, tyear <= 2024) %>%
  group_by(year = tyear, quarter) %>%
  summarise(inflation = mean(allItemsYearOn, na.rm = TRUE), .groups = 'drop') %>%
  mutate(date = create_date_label(year, quarter)) %>%
  select(date, inflation)

# Graphique + Boxplot Inflation
ggplot(nigeria_inflation_10_24, aes(x = parse_quarter_date(date), y = inflation)) +
  geom_line(color = color_tertiary, linewidth = 1) +
  scale_x_date(date_labels = "%Y", date_breaks = "5 years") +
  labs(title = "Inflation CPI Nigeria (2010-2024)",
       x = "Année", y = "Inflation (%)") +
  theme_minimal()

ggplot(nigeria_inflation_10_24, aes(y = inflation)) +
  geom_boxplot(fill = color_tertiary, alpha = 0.6) +
  labs(title = "Distribution Inflation", y = "Inflation (%)") +
  theme_minimal() +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank())

# ----------------------------------------------------------------------------
# 3.3 PIB (Source: Central Bank of Nigeria)
# ----------------------------------------------------------------------------

pib_nigeria_CBN<- read_excel('/Users/youss/Downloads/Real_GDP_in_Excel (1).xlsx')

pib_nairas_trim_10_24 <- pib_nigeria_CBN %>%
  filter(tyear >= 2010, tyear <= 2024, period != "Annual") %>%
  mutate(
    PIB_milliards_Naira = as.numeric(gdPatCurrentMarketPrices),
    quarter = as.numeric(gsub("Q", "", period)),
    year = tyear,
    date = create_date_label(year, quarter)
  ) %>%
  select(date, PIB_milliards_Naira)

write_csv(pib_nairas_trim_10_24,file="/Users/youss/Downloads/Real_GDP_Nairas.csv")

# ----------------------------------------------------------------------------
# 3.4 Termes de l'échange (Source: FRED)
# ----------------------------------------------------------------------------

# Données Fred (2010-2024)
terms_of_trade_Fred <- read_excel(
  "/Users/youss/Documents/Cour Maserati /Memoire /Base de données/ Terms of Trade Nigeria Fred.xlsx",
  sheet = 2
)

terms_of_trade_nigeria_FRED <- terms_of_trade_Fred %>%
  rename(date = observation_date, termsoftrade = NGATTTIX) %>%
  mutate(date = year(as.Date(date))) %>%
  slice(11:25)

# Série temporelle annuelle
terms_of_trade_ts <- ts(terms_of_trade_nigeria_FRED$termsoftrade, start = 2010, frequency = 1)

# Indicateur trimestriel : Commodity Net Export Price Index (Source: FMI)
commodity_net_export_price <- read_csv('Commodity Net Export Price Index, Individual Commodities Weighted by Ratio of Net Exports to GDP.csv')

commodity_net_export_price_trim_10_24 <- commodity_net_export_price %>%
  pivot_longer(cols = matches("^[0-9]{4}-M[0-9]{2}$"), names_to = "Date", values_to = "Valeur") %>%
  mutate(
    Valeur = as.numeric(Valeur),
    year = as.numeric(substr(Date, 1, 4)),
    month = as.numeric(substr(Date, 7, 8)),
    quarter = ceiling(month / 3)
  ) %>%
  filter(year >= 2010, year <= 2024) %>%
  group_by(year, quarter) %>%
  summarise(termsoftrade = mean(Valeur, na.rm = TRUE), .groups = 'drop') %>%
  mutate(date = create_date_label(year, quarter))

# Série temporelle trimestrielle
start_year <- commodity_net_export_price_trim_10_24$year[1]
start_quarter <- commodity_net_export_price_trim_10_24$quarter[1]

commodity_net_export_price_ts <- ts(
  commodity_net_export_price_trim_10_24$termsoftrade,
  start = c(start_year, start_quarter),
  frequency = 4
)

# INTERPOLATION DENTON-CHOLETTE
modele_denton_terms <- td(
  terms_of_trade_ts ~ 0 + commodity_net_export_price_ts, 
  method = "denton-cholette", 
  conversion = "mean", 
  criterion = "proportional"
)

terms_of_trade_valeur <- predict(modele_denton_terms)

terms_of_trade_trim_10_24 <- commodity_net_export_price_trim_10_24 %>%
  mutate(termsoftrade = as.numeric(terms_of_trade_valeur)) %>%
  select(date, termsoftrade)

# Graphique 
ggplot(terms_of_trade_trim_10_24, aes(x = parse_quarter_date(date), y = termsoftrade)) +
  geom_line(color = "blue", linewidth = 1) +
  scale_x_date(date_labels = "%Y", date_breaks = "5 years") +
  theme_minimal() +
  labs(
    title = "Termes de l'échange trimestriels (Désagrégation Denton)",
    subtitle = "Interpolation via Commodity Net Export Price Index (FMI)",
    x = "Année",
    y = "Indice des termes de l'échange"
  )

# Boxplot
ggplot(terms_of_trade_trim_10_24, aes(y = termsoftrade)) +
  geom_boxplot(fill = color_tertiary, alpha = 0.6) +
  labs(title = "Distribution termes à l'échange", y = "termsoftrade") +
  theme_minimal() +
  theme(axis.text.x = element_blank(), axis.ticks.x = element_blank())

# ----------------------------------------------------------------------------
# 3.5 Dette (Debt service DBMO)
# ----------------------------------------------------------------------------

# Données trimestrielles disponibles qu'a partir  de 2012 Q4 à 2024 Q4
debt_trimestriel_13_24 <- read_excel("/Users/youss/Documents/Debt_DBMO.xlsx") %>%
  mutate(
    date = gsub(" Q-?", "-Q", Date),
    dette_milliards_usd = as.numeric(`Total Public Debt( US$ K Millions)`)
  ) %>%
  select(date,dette_milliards_usd)

#Debt réel
debt_réel_12_24 <- debt_trimestriel_13_24 %>%
  left_join(taux_change_10_24, by = "date") %>%
  left_join(nigeria_cpi_10_24, by = "date") %>%
  mutate(
    dette_milliards_nairas = dette_milliards_usd * taux_change, 
    dette_milliards_nairas_réel = (dette_milliards_nairas / CPI) *100
  ) %>%
  select(date,dette_milliards_nairas,dette_milliards_nairas_réel)

# ----------------------------------------------------------------------------
# Base Finale
# ----------------------------------------------------------------------------

# Fusion de toutes les variables
base_10_24 <- spread_10y %>%
  # Variables pétrolières
  left_join(prix_brent_10_24,by="date") %>%
  left_join(prix_réel_10_24, by = "date") %>%
  left_join(nigeria_prod_trim_10_24, by = "date") %>%
  left_join(nigeria_revenus_petroliers_réels_10_24,by="date")%>%
  left_join(nigeria_revenus_petroliers_10_24,by="date")%>%
  left_join(nigeria_export_trim_10_24, by = "date") %>%
  left_join(nigeria_part_prod_10_24, by="date")%>%
  # Variables macroéconomiques
  left_join(taux_change_10_24, by = "date") %>%
  left_join(nigeria_inflation_10_24, by = "date") %>%
  left_join(nigeria_cpi_10_24, by = "date") %>%
  left_join(pib_nairas_trim_10_24, by = "date") %>%
  left_join(terms_of_trade_trim_10_24, by = "date") %>%
  left_join(debt_réel_12_24, by = "date")%>%
  mutate(ratio=(dette_milliards_nairas_réel/PIB_milliards_Naira)*100)
write_csv(base_10_24, file='/Users/youss/Documents/Cour Maserati /Memoire /Base de données/base.csv')
