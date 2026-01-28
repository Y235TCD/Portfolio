# =============================================================================
# Analyse des rendements boursiers : S&P500 et multi-actifs (Orange, Danone, CAC40)
# Auteur : Saleh Ben Haliki Youssouf
# L3 Finance
# =============================================================================

# =============================================================================
#  Installation et chargement des packages nécessaires
# =============================================================================
install.packages(c("quantmod", "moments"))
library(quantmod)
library(moments)
library(ggplot2)
library(zoo)
library(xts)
# =============================================================================
# 1. Définition de la période d'étude
# =============================================================================
time_period <- 5  # en années
end_date <- Sys.Date()                          # Date actuelle
start_date <- end_date - 365 * time_period      # Date de début

# =============================================================================
# 2. Fonction pour récupérer les rendements quotidiens
# =============================================================================
get_daily_stock_return.fct <- function(ticker.arg, start_date.arg, end_date.arg) {
  
  price.xts <- getSymbols(
    Symbols = ticker.arg,
    src = "yahoo",
    from = start_date.arg,
    to = end_date.arg,
    auto.assign = FALSE
  )
  
  price_adj.xts <- Ad(price.xts)               # Prix ajustés
  return.xts <- dailyReturn(price_adj.xts, type = "log")  # Rendements log
  return(return.xts)
}

# =============================================================================
# 3. Analyse des rendements quotidiens du S&P500
# =============================================================================

sp500_return.xts <- get_daily_stock_return.fct("^GSPC", start_date, end_date)

# Graphique des rendements quotidiens
df <- data.frame(
  Date = index(sp500_return.xts),
  LogRendement = as.numeric(sp500_return.xts)
)

ggplot(df, aes(x = Date, y = LogRendement)) +
  geom_line(aes(color = LogRendement > 0), linewidth = 0.4, alpha = 0.7) +
  scale_color_manual(values = c("TRUE" = "#27ae60", "FALSE" = "#c0392b"),
                     guide = "none") +
  geom_hline(yintercept = 0, linetype = "dashed", color = "gray40", linewidth = 0.6) +
  labs(
    title = "Rendements Logarithmiques Quotidiens du S&P 500",
    subtitle = paste("Période:", format(min(df$Date), "%Y"), "à", format(max(df$Date), "%Y")),
    x = NULL,
    y = "Log-rendement"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    plot.title = element_text(face = "bold", size = 15, hjust = 0.5),
    plot.subtitle = element_text(size = 9, hjust = 0.5, color = "gray50"),
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "gray90", linewidth = 0.3),
    panel.grid.major.y = element_line(color = "gray90", linewidth = 0.3),
    axis.text = element_text(color = "gray30"),
    plot.margin = margin(15, 15, 15, 15)
  )

# Préparation des séries pour régression (rendement d'aujourd'hui vs hier)
today_return.xts <- sp500_return.xts[-1]
last_position <- length(sp500_return.xts)
yesterday_return.xts <- sp500_return.xts[-last_position]

# Régression
model.lst <- lm(today_return.xts ~ yesterday_return.xts)
coef(model.lst)           # Alpha et Bêta

# Nuage de points et droite de régression
return.df <- data.frame(today_return.xts, yesterday_return.xts)
names(return.df) <- c("today_return.col", "yesterday_return.col")

plot(return.df$yesterday_return.col, return.df$today_return.col,
     xlab = "Rendement (t-1)", ylab = "Rendement (t)",
     main = "Nuage de points S&P 500 (t vs t-1)",
     pch = 16, cex = 0.3)
abline(h = 0, v = 0, col = "grey")
abline(model.lst, col = "red", lwd = 1.5)

# Filtrage des valeurs aberrantes (-5% < rendement < 5%)
filtered_return.df <- return.df[
  return.df$today_return.col > -0.05 &
    return.df$today_return.col < 0.05 &
    return.df$yesterday_return.col > -0.05 &
    return.df$yesterday_return.col < 0.05,
]

# Nouveau graphique avec données filtrées
plot(filtered_return.df$yesterday_return.col, filtered_return.df$today_return.col,
     xlab = "Rendement (t-1)", ylab = "Rendement (t)",
     main = "Nuage filtré S&P500",
     pch = 16, cex = 0.3)
abline(h = 0, v = 0, col = "grey")
model.lst <- lm(filtered_return.df[,1] ~ filtered_return.df[,2])
abline(model.lst, col = "red", lwd = 1.5)

# =============================================================================
# 4. Analyse multi-actifs : Orange, Danone, CAC40
# =============================================================================

# Fonction pour récupérer les prix ajustés
get_daily_stock_price.fct <- function(ticker.arg, start_date.arg, end_date.arg) {
  price.xts <- getSymbols(
    Symbols = ticker.arg,
    src = "yahoo",
    from = start_date.arg,
    to = end_date.arg,
    auto.assign = FALSE
  )
  return(Ad(price.xts))
}

# Récupération des prix
ORA_adj.xts <- get_daily_stock_price.fct("ORA.PA", start_date, end_date)
BN_adj.xts  <- get_daily_stock_price.fct("BN.PA", start_date, end_date)
C40_adj.xts <- get_daily_stock_price.fct("C40.PA", start_date, end_date)

# Fusion et renommage des colonnes
prices.xts <- merge(ORA_adj.xts, BN_adj.xts, C40_adj.xts)
names(prices.xts) <- c("ORA.PA", "BN.PA", "C40.PA")

# =============================================================================
# 5. Conversion en données mensuelles et normalisation
# =============================================================================
prices_monthly.xts <- to.monthly(prices.xts, indexAt = "lastof", OHLC = FALSE)

# Normalisation Base 100
normalized_prices.xts <- merge(
  100 * prices_monthly.xts[,1] / as.numeric(prices_monthly.xts[1,1]),
  100 * prices_monthly.xts[,2] / as.numeric(prices_monthly.xts[1,2]),
  100 * prices_monthly.xts[,3] / as.numeric(prices_monthly.xts[1,3])
)
names(normalized_prices.xts) <- c("ORA.PA", "BN.PA", "C40.PA")

# Tracé des prix normalisés
plot.xts(normalized_prices.xts, col = c("orange","blue","red"), main="Prix normalisés")

# =============================================================================
# 6. Calcul des rendements log mensuels
# =============================================================================
monthly_log_returns.xts <- diff(log(prices_monthly.xts))
monthly_log_returns.xts <- na.omit(monthly_log_returns.xts)

# Conversion en data.frame pour chaque actif
return_orange.df <- as.data.frame(monthly_log_returns.xts[,1])
return_danone.df <- as.data.frame(monthly_log_returns.xts[,2])
return_cac40.df <- as.data.frame(monthly_log_returns.xts[,3])

# =============================================================================
# 7. Graphiques des rendements mensuels
# =============================================================================
plot.xts(monthly_log_returns.xts[,1], col = "orange", main="Rendements Orange")
plot.xts(monthly_log_returns.xts[,2], col = "blue", main="Rendements Danone")
plot.xts(monthly_log_returns.xts[,3], col = "red", main="Rendements CAC40")

# Histogrammes
bins.vec <- seq(from=-0.225, to=0.2, by=0.025)
hist(monthly_log_returns.xts[,1], breaks=bins.vec, col="orange")
hist(monthly_log_returns.xts[,2], breaks=bins.vec, col="blue")
hist(monthly_log_returns.xts[,3], breaks=bins.vec, col="red")

# =============================================================================
# 8. Nuages de points et régressions
# =============================================================================
scatter_plot.fct <- function(explained_series.arg, explanatory_series.arg) {
  plot(explanatory_series.arg, explained_series.arg, pch=16, cex=0.8)
  model <- lm(explained_series.arg ~ explanatory_series.arg)
  abline(model, lwd=2, col="red")
}

# Exemple : Orange vs Danone, Orange vs CAC40, Danone vs CAC40
scatter_plot.fct(return_danone.df[,1], return_orange.df[,1])
scatter_plot.fct(return_cac40.df[,1], return_orange.df[,1])
scatter_plot.fct(return_danone.df[,1], return_cac40.df[,1])

# =============================================================================
# 9. Statistiques sommaires
# =============================================================================
# Rendement moyen mensuel
mean_monthly_orange <- mean(return_orange.df[,1])
mean_monthly_danone <- mean(return_danone.df[,1])
mean_monthly_cac40 <- mean(return_cac40.df[,1])

# Rendement annuel (annualisation)
mean_annual_orange <- 100*((1+mean_monthly_orange)^12 - 1)
mean_annual_danone <- 100*((1+mean_monthly_danone)^12 - 1)
mean_annual_cac40 <- 100*((1+mean_monthly_cac40)^12 - 1)

# Écart-type mensuel et annuel
sd_monthly_orange <- sd(return_orange.df[,1])
sd_monthly_danone <- sd(return_danone.df[,1])
sd_monthly_cac40 <- sd(return_cac40.df[,1])

sd_annual_orange <- 100*sd_monthly_orange*sqrt(12)
sd_annual_danone <- 100*sd_monthly_danone*sqrt(12)
sd_annual_cac40 <- 100*sd_monthly_cac40*sqrt(12)

# Ratio de Sharpe
risk_free_rate <- 3
(sharpe_orange <- (mean_annual_orange - risk_free_rate)/sd_annual_orange)
(sharpe_danone <- (mean_annual_danone - risk_free_rate)/sd_annual_danone)
(sharpe_cac40 <- (mean_annual_cac40 - risk_free_rate)/sd_annual_cac40)

# Skewness
(skew_orange <- skewness(return_orange.df[,1]))
(skew_danone <- skewness(return_danone.df[,1]))
(skew_cac40 <- skewness(return_cac40.df[,1]))

# =============================================================================
# 10. Calcul du risque d’un portefeuille binaire
# =============================================================================
portfolio_sd.fct <- function(stock1.arg, stock2.arg, weight.arg) {
  return.df <- na.omit(data.frame(stock1=stock1.arg, stock2=stock2.arg))
  w1 <- weight.arg
  w2 <- 1 - weight.arg
  var1 <- var(return.df$stock1)
  var2 <- var(return.df$stock2)
  cov12 <- cov(return.df$stock1, return.df$stock2)
  portfolio_sd <- sqrt(w1^2*var1 + w2^2*var2 + 2*w1*w2*cov12)
  return(portfolio_sd)
}

# Test de la fonction
portfolio_sd.fct(ORA_adj.xts, C40_adj.xts, 0.5)
portfolio_sd.fct(C40_adj.xts, BN_adj.xts, 0.8)
portfolio_sd.fct(ORA_adj.xts, BN_adj.xts, 0.2)

# =============================================================================
# 11. Relation entre poids dans le portefeuille et risque
# =============================================================================
weights.vec <- seq(0, 1, by=0.1)
sd_return.df <- data.frame(weight_col=numeric(), sd_col=numeric())

for (weight in weights.vec) {
  resul.df <- data.frame(weight_col=weight,
                         sd_col=portfolio_sd.fct(ORA_adj.xts, BN_adj.xts, weight))
  sd_return.df <- rbind(sd_return.df, resul.df)
}

# Tracé de l’écart-type en fonction du poids
plot(sd_return.df$weight_col, sd_return.df$sd_col, type="l",
     col="blue", lwd=2,
     xlab="Poids Orange dans le portefeuille",
     ylab="Écart-type du portefeuille",
     main="Risque vs poids dans le portefeuille")
