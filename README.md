# Portfolio
Collection de mes projets académiques et professionnels, illustrant mes compétences en économie, finance et data


# 📈 Analyse des Rendements Boursiers

Projet d'analyse quantitative des rendements boursiers du S&P 500 et d'actifs français (Orange, Danone, CAC40) en R.

## 📋 Description

Ce projet propose une analyse complète des rendements financiers, incluant :
- Analyse des rendements quotidiens du S&P 500
- Étude de l'autocorrélation des rendements
- Comparaison multi-actifs sur le marché français
- Calcul de métriques de performance (ratio de Sharpe, skewness)
- Optimisation de portefeuille binaire

## 🔧 Prérequis

- R (version ≥ 4.0.0 recommandée)
- RStudio (optionnel mais recommandé)

### Packages nécessaires

```r
install.packages(c("quantmod", "moments", "ggplot2"))
```

## 📦 Installation

1. Clonez ce dépôt :
```bash
git clone https://github.com/votre-username/analyse-rendements-boursiers.git
cd analyse-rendements-boursiers
```

2. Ouvrez le fichier `Finance.R` dans RStudio

3. Exécutez les premières lignes pour installer les dépendances :
```r
library(quantmod)
library(moments)
library(ggplot2)
```

## 🚀 Utilisation

Le script est organisé en sections numérotées :

### 1. Configuration de la période d'étude
```r
time_period <- 5  # Période en années
```

### 2. Analyse du S&P 500
- Récupération des données via Yahoo Finance
- Calcul des rendements logarithmiques quotidiens
- Visualisation avec ggplot2
- Régression (t vs t-1) pour détecter l'autocorrélation

### 3. Analyse multi-actifs
Actifs analysés :
- **ORA.PA** : Orange
- **BN.PA** : Danone  
- **C40.PA** : CAC 40

### 4. Métriques calculées
- Rendements moyens mensuels et annuels
- Volatilité (écart-type)
- Ratio de Sharpe (taux sans risque : 3%)
- Skewness (asymétrie de la distribution)

### 5. Optimisation de portefeuille
Calcul du risque d'un portefeuille binaire en fonction de la pondération des actifs.

## 📊 Visualisations générées

Le script produit plusieurs graphiques :
- Rendements logarithmiques quotidiens du S&P 500 (colorés selon le signe)
- Nuages de points avec droite de régression
- Prix normalisés (base 100) des actifs français
- Histogrammes des rendements mensuels
- Relation risque/poids dans un portefeuille

## 📐 Fonctions principales

### `get_daily_stock_return.fct()`
Récupère les rendements logarithmiques quotidiens d'un actif.

```r
sp500_return <- get_daily_stock_return.fct("^GSPC", start_date, end_date)
```

### `get_daily_stock_price.fct()`
Récupère les prix ajustés d'un actif.

```r
ora_price <- get_daily_stock_price.fct("ORA.PA", start_date, end_date)
```

### `portfolio_sd.fct()`
Calcule l'écart-type d'un portefeuille binaire.

```r
risk <- portfolio_sd.fct(stock1, stock2, weight = 0.5)
```

## 📈 Exemple de résultats

Les métriques typiques obtenues incluent :
- **Rendements annualisés** : comparaison de performance entre actifs
- **Ratio de Sharpe** : mesure du rendement ajusté au risque
- **Corrélations** : relations entre les différents actifs
- **Skewness** : identification des asymétries de distribution

## 🔍 Méthodologie

### Rendements logarithmiques
Les rendements sont calculés en logarithme :
```
r_t = ln(P_t / P_{t-1})
```

### Normalisation
Les prix sont normalisés en base 100 pour faciliter la comparaison :
```
Prix_normalisé = 100 × (Prix / Prix_initial)
```

### Annualisation
- Rendement annuel : `(1 + r_mensuel)^12 - 1`
- Volatilité annuelle : `σ_mensuel × √12`

## ⚙️ Configuration

Modifiez ces paramètres au début du script selon vos besoins :

```r
time_period <- 5              # Période d'analyse (années)
risk_free_rate <- 3           # Taux sans risque (%)
bins.vec <- seq(-0.225, 0.2, by=0.025)  # Histogrammes
```

## 📝 Notes importantes

- Les données proviennent de Yahoo Finance via le package `quantmod`
- Une connexion internet est requise pour télécharger les données
- Les tickers doivent être valides sur Yahoo Finance
- Le script filtre les valeurs aberrantes (±5%) pour certaines analyses

## 🤝 Contribution

Les contributions sont les bienvenues ! N'hésitez pas à :
1. Forker le projet
2. Créer une branche (`git checkout -b feature/amelioration`)
3. Commiter vos changements (`git commit -m 'Ajout fonctionnalité'`)
4. Pusher vers la branche (`git push origin feature/amelioration`)
5. Ouvrir une Pull Request


## 📧 Contact

Pour toute question ou suggestion, n'hésitez pas à ouvrir une issue sur GitHub.

## 🙏 Remerciements

- Package `quantmod` pour l'accès aux données financières
- Package `ggplot2` pour les visualisations avancées
- Yahoo Finance pour les données de marché

---
⭐ Si ce projet vous a été utile, n'hésitez pas à lui donner une étoile !
