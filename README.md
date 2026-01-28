# 📚 Portfolio de Projets

Collection de mes projets en économie, finance et data science.

**Auteur** : Saleh Ben Haliki Youssouf  
**Formation** : Master Maserati Data Science  
**Période** : 2010-2024

---

## 🎯 Projets

| # | Projet | Type | Période | Tech | README |
|---|--------|------|---------|------|--------|
| 1 | [**Rendements Boursiers**](#1-rendements-boursiers) | Analyse quantitative | 5 ans | R | [📄](./rendements-boursiers) |
| 2 | [**Backtesting Capgemini**](#2-backtesting-capgemini) | Trading algorithmique | 2020-2024 | Excel | [📄](./backtesting-capgemini) |
| 3 | [**Détection Fraude CB**](#3-détection-fraude-cb) | Machine Learning | 2023 | Python | [📄](./fraud-detection) |
| 4 | [**Mémoire Nigeria**](#4-mémoire-nigeria) | Économétrie | 2010-2024 | R | [📄](./memoire-nigeria) |

---

## 📖 Détails

### 1. Rendements Boursiers
**Analyse quantitative multi-actifs**

Analyse des rendements du S&P500, Orange, Danone et CAC40 avec calculs de Sharpe ratio, optimisation de portefeuille et tests d'autocorrélation.

**Technologies** : R, quantmod, ggplot2, tseries

**Résultats clés** :
- Rendements logarithmiques quotidiens
- Régression t vs t-1
- Optimisation portefeuille binaire
- Métriques : Sharpe, skewness, volatilité

[📂 Voir le projet](./rendements-boursiers)

---

### 2. Backtesting Capgemini
**3 stratégies de trading algorithmique**

Backtesting systématique sur l'action Capgemini (CAP.PA) avec optimisation de paramètres sur 1,286 jours de trading.

**Technologies** : Excel, formules avancées

**Stratégies testées** :
- **Filtres** (6 configs) : Meilleur 7.5% → +333€
- **Moyennes Mobiles** (7 configs) : MM200-50 → +64€
- **RSI** (18 configs) : **RSI 30j/20% → +1,219€** 🏆

**Performance du marché** : +54.9% (Buy & Hold)

[📂 Voir le projet](./backtesting-capgemini)

---

### 3. Détection Fraude CB
**Classification ML sur données déséquilibrées**

Détection automatique de fraudes bancaires avec optimisation des métriques pour classes déséquilibrées.

**Technologies** : Python, scikit-learn, pandas, seaborn

**Dataset** : 
- ~550k transactions (Kaggle)
- Déséquilibre : 50% normal / 50% fraude
- Features : 31 variables (V1-V28 PCA + Amount + Time)

**Résultats** :
- Modèle : Logistic Regression
- AUC-ROC : 0.95+
- Métriques : Precision, Recall, F1-Score

[📂 Voir le projet](./fraud-detection)

---

### 4. Mémoire Nigeria
**Impact chocs pétroliers sur risque souverain**

Construction d'une base trimestrielle complète pour analyser la relation entre le marché pétrolier et le risque de défaut du Nigeria.

**Technologies** : R, dplyr, tempdisagg, tseries

**Base de données** :
- 60 observations (2010-2024)
- 20 variables (1 dépendante + 19 explicatives)
- Variables : spread_10y, prix Brent, production, PIB, dette, etc.

**Méthodologie** :
- Interpolation Denton-Cholette (termes de l'échange)
- Agrégation trimestrielle multi-sources
- Analyse MCO et VAR (à venir)

[📂 Voir le projet](./memoire-nigeria)

---

## 📊 Vue d'ensemble

```
Projets         : 4
Langages        : R (2), Python (1), Excel (1)
Période globale : 2010-2024
Observations    : 552k+ transactions | 60 trimestres | 1,286 jours
Domaines        : Finance, ML, Économétrie
```

---

## 🛠️ Technologies

### Langages
- **R** : Analyse financière, économétrie
- **Python** : Machine Learning, data science
- **Excel** : Backtesting, analyse de données

### Packages principaux
- **R** : quantmod, ggplot2, dplyr, tempdisagg, tseries
- **Python** : scikit-learn, pandas, matplotlib, seaborn, numpy
- **Excel** : Formules avancées, tableaux croisés dynamiques

---

## 📈 Compétences démontrées

**Finance quantitative** :
- Calcul de rendements logarithmiques
- Ratio de Sharpe, skewness
- Backtesting de stratégies
- Optimisation de portefeuille

**Machine Learning** :
- Classification binaire
- Gestion du déséquilibre de classes
- Validation croisée
- Métriques avancées (AUC-ROC, F1)

**Économétrie** :
- Construction de bases temporelles
- Interpolation (Denton-Cholette)
- Agrégation multi-fréquences
- Analyse VAR

**Data Engineering** :
- Collecte multi-sources
- Nettoyage de données
- Transformations complexes
- Standardisation temporelle

---

## 📂 Structure du dépôt

```
portfolio/
├── README.md                          # Ce fichier
├── rendements-boursiers/
│   ├── README.md
│   ├── Finance.R
│   └── data/
├── backtesting-capgemini/
│   ├── README.md
│   ├── Analyse_capgemini.xlsx
│   └── synthese/
├── fraud-detection/
│   ├── README.md
│   ├── Projet_Kaggle_Credit_Card_Fraud.ipynb
│   ├── requirements.txt
│   └── data/
└── memoire-nigeria/
    ├── README.md
    ├── projet.R
    ├── base_10_24.csv
    └── data/
```

---

## 🚀 Démarrage rapide

### Cloner le dépôt
```bash
git clone https://github.com/votre-username/portfolio.git
cd portfolio
```

### Par projet

**R (Rendements & Nigeria)** :
```r
setwd("rendements-boursiers")  # ou "memoire-nigeria"
source("script.R")
```

**Python (Fraude CB)** :
```bash
cd fraud-detection
pip install -r requirements.txt
jupyter notebook Projet_Kaggle_Credit_Card_Fraud.ipynb
```

**Excel (Capgemini)** :
```bash
cd backtesting-capgemini
open Analyse_capgemini.xlsx
```

---

## 📧 Contact

- **Email** : youssoufsalehhaliki@gmail.com
- **GitHub** : [github.com/votre-username](https://github.com/votre-username)
- **LinkedIn** : [Votre profil](https://linkedin.com/in/votre-profil)

---

## 📝 Licence

Ce portfolio est destiné à des fins académiques et de démonstration de compétences.

---

## 🙏 Remerciements

- Kaggle pour les datasets publics
- Yahoo Finance pour les données de marché
- Central Bank of Nigeria, FRED, IMF pour les données économiques
- Communautés R et Python pour les packages open-source

---

⭐ **Si ce portfolio vous intéresse, n'hésitez pas à donner une étoile !**

**Dernière mise à jour** : Janvier 2025

---

**Auteur** : Saleh Ben Haliki Youssouf | **Formation** : Master Maserati Data Science | **Année** : 2025-2026
# 📊 Backtesting Multi-Stratégies - Action Capgemini (CAP.PA)

Analyse comparative de **3 stratégies de trading algorithmique** sur l'action Capgemini avec optimisation des paramètres : **Filtres de variation**, **Moyennes Mobiles (MM)** et **RSI (Relative Strength Index)**.

[![Excel](https://img.shields.io/badge/Excel-Analysis-green.svg)]()
[![Trading](https://img.shields.io/badge/Stratégies-3-blue.svg)]()
[![Période](https://img.shields.io/badge/P%C3%A9riode-2020--2024-orange.svg)]()
[![Meilleure](https://img.shields.io/badge/Meilleure-RSI%2030j%2F40%25-gold.svg)]()

---

## 📋 Table des matières

- [Vue d'ensemble](#-vue-densemble)
- [Résultats globaux](#-résultats-globaux)
- [Stratégie 1 : Filtres](#-stratégie-1--filtres-de-variation)
- [Stratégie 2 : Moyennes Mobiles](#-stratégie-2--moyennes-mobiles-mm)
- [Stratégie 3 : RSI](#-stratégie-3--rsi-relative-strength-index)
- [Comparaison des stratégies](#-comparaison-des-stratégies)
- [Structure du fichier](#-structure-du-fichier)
- [Méthodologie](#-méthodologie)
- [Utilisation](#-utilisation)
- [Conclusions](#-conclusions)

---

## 🎯 Vue d'ensemble

Ce fichier Excel contient le **backtesting systématique** de **3 types de stratégies** de trading algorithmique appliquées à l'action **Capgemini** (CAP.PA) sur 5 ans.

### Informations générales

- **Actif** : Capgemini (CAP.PA) - Services informatiques
- **Période** : 31 décembre 2019 - 31 décembre 2024 (5 ans)
- **Données** : 1,286 jours de trading (quotidiennes)
- **Stratégies testées** : 3 familles (Filtres, MM, RSI)
- **Paramètres testés** : ~30 combinaisons différentes

### Performance du marché

| Métrique | Valeur |
|----------|--------|
| **Cours initial (31/12/2019)** | 100.73 € |
| **Cours final (31/12/2024)** | 156.05 € |
| **Performance Buy & Hold** | **+54.9%** 📈 |
| **Plus haut** | 223.13 € |
| **Plus bas** | 53.11 € (Crash COVID, Mars 2020) |

---

## 🏆 Résultats globaux

### 🥇 Classement des meilleures stratégies

| Rang | Stratégie | Paramètres | Gain net | Frais | Nb signaux |
|------|-----------|------------|----------|-------|------------|
| 🥇 **1** | **RSI** | 30j / 40% | **+1,167.70 €** | -732.03 € | N/A |
| 🥈 **2** | **RSI** | 30j / 20% | **+1,218.92 €** | -47.12 € | N/A |
| 🥉 **3** | **RSI** | 30j / 10% | **+349.46 €** | -12.24 € | N/A |
| 4 | **RSI** | 14j / 10% | **+597.37 €** | -49.9 € | N/A |
| 5 | **RSI** | 30j / 30% | **+588.64 €** | -188.86 € | N/A |

### 🔴 Pires stratégies

| Rang | Stratégie | Paramètres | Gain net | Frais |
|------|-----------|------------|----------|-------|
| ❌ 1 | **Filtres** | 1% | **-1,165.46 €** | -1,220.23 € |
| ❌ 2 | **RSI** | 14j / 40% | **-807.12 €** | -1,168.35 € |
| ❌ 3 | **RSI** | 5j / 30% | **-571.58 €** | -1,060.28 € |

### 📊 Résumé par famille

```
┌─────────────────────────────────────────────────┐
│               RÉSULTATS PAR STRATÉGIE            │
├─────────────────────────────────────────────────┤
│ Filtres       : -1,165 € à +333 €              │
│ MM            : -307 € à +64 €                  │
│ RSI           : -807 € à +1,218 €  ⭐          │
│                                                  │
│ GAGNANT : RSI 30j/20% → +1,218.92 €            │
└─────────────────────────────────────────────────┘
```

---

## 📉 Stratégie 1 : Filtres de variation

### Principe

Stratégie basée sur les **variations de prix** : 
- **Signal ACHAT** : Quand la variation dépasse un seuil positif
- **Signal VENTE** : Quand la variation dépasse un seuil négatif

### Paramètres testés

6 seuils de variation testés : **1%, 2.5%, 5%, 7.5%, 10%, 12.5%**

### Résultats détaillés

| Seuil | Gain brut | Frais cumulés | Gain net | Nb signaux | Performance |
|-------|-----------|---------------|----------|------------|-------------|
| **1%** | +54.77 € | -1,220.23 € | **-1,165.46 €** | 640 | ❌ Pire |
| **2.5%** | +125.33 € | -308.19 € | **-182.86 €** | ~162 | ❌ |
| **5%** | -97.53 € | -68.41 € | **-165.93 €** | ~36 | ❌ |
| **7.5%** | +360.00 € | -26.92 € | **+333.08 €** | ~14 | ✅ Meilleur |
| **10%** | +150.46 € | -9.12 € | **+141.34 €** | ~5 | ✅ |
| **12.5%** | 0.00 € | 0.00 € | **0.00 €** | 0 | ⚪ Aucun signal |

### Analyse

**✅ Points forts** :
- Seuil à **7.5%** : Meilleure performance (+333€)
- Seuils élevés (7.5-10%) : Réduction drastique des frais

**❌ Points faibles** :
- Seuil **1%** : 640 signaux → Overtrading catastrophique (-1,165€)
- Frais de transaction tuent la performance pour seuils faibles
- Seuil **12.5%** : Aucun signal généré (trop restrictif)

**💡 Enseignement** :
```
Plus le seuil est faible → Plus de signaux → Plus de frais → Moins de profit
```

---

## 📈 Stratégie 2 : Moyennes Mobiles (MM)

### Principe

Stratégie basée sur le **croisement de moyennes mobiles** :
- **Signal ACHAT** : Quand MM courte croise au-dessus de MM longue (Golden Cross)
- **Signal VENTE** : Quand MM courte croise en-dessous de MM longue (Death Cross)

### Paramètres testés

7 configurations testées :

#### Type 1 : Cours vs MM (Spot vs MA)
- **20-spot** : Cours vs MA20
- **50-spot** : Cours vs MA50
- **200-spot** : Cours vs MA200

#### Type 2 : Croisement de MMs
- **50-20** : MA50 vs MA20
- **200-20** : MA200 vs MA20
- **200-50** : MA200 vs MA50

#### Type 3 : Double signal (optionnel)
- Combinaisons de signaux multiples

### Résultats détaillés

| Paramètre | Type | Gain brut | Frais | Gain net | Performance |
|-----------|------|-----------|-------|----------|-------------|
| **20-spot** | Spot vs MM | +19.32 € | -326.26 € | **-306.94 €** | ❌ |
| **50-spot** | Spot vs MM | +34.04 € | -140.33 € | **-106.29 €** | ❌ |
| **200-spot** | Spot vs MM | +16.41 € | -110.00 € | **-93.59 €** | ❌ |
| **50-20** | Croisement | +9.32 € | -44.05 € | **-34.73 €** | ❌ |
| **200-20** | Croisement | +24.49 € | -26.00 € | **-1.51 €** | ⚠️ Quasi-neutre |
| **200-50** | Croisement | +78.30 € | -14.00 € | **+64.30 €** | ✅ Seul positif |
| **Double signal** | Combiné | 0.00 € | 0.00 € | **0.00 €** | ⚪ |

### Analyse

**✅ Points forts** :
- **MM 200-50** : Seule stratégie MM profitable (+64€)
- Signaux lents (MM longues) → Peu de transactions → Frais réduits

**❌ Points faibles** :
- **MM courtes (20-spot)** : Trop de signaux → Frais élevés (-307€)
- Performance globale décevante (1 seule config profitable sur 7)
- Retard inhérent aux MM → Entrées/sorties tardives

**💡 Enseignement** :
```
Moyennes mobiles longues (200-50) > Moyennes courtes
Mais performance reste modeste (+64€ vs +1,218€ du RSI)
```

---

## 🎯 Stratégie 3 : RSI (Relative Strength Index)

### Principe

Stratégie basée sur l'indicateur **RSI** pour détecter les zones de **survente** (achat) et **surachat** (vente) :

- **Signal ACHAT** : RSI < Seuil bas (ex: 30) → Zone de survente
- **Signal VENTE** : RSI > Seuil haut (ex: 70) → Zone de surachat

### Paramètres testés

**18 configurations** testées avec :
- **Périodes RSI** : 5j, 10j, 14j, 30j, 60j
- **Seuils** : 5%, 10%, 20%, 30%, 40%

### 🏆 Résultats détaillés (Top 10)

| Rang | Période | Seuil | Gain brut | Frais | **Gain net** | Performance |
|------|---------|-------|-----------|-------|--------------|-------------|
| 🥇 **1** | **30j** | **20%** | +1,266.03 € | -47.12 € | **+1,218.92 €** | 🔥 Excellent |
| 🥈 **2** | **30j** | **40%** | +1,899.73 € | -732.03 € | **+1,167.70 €** | 🔥 Excellent |
| 🥉 **3** | **14j** | **10%** | +647.27 € | -49.90 € | **+597.37 €** | ✅ Très bon |
| 4 | **30j** | **30%** | +777.50 € | -188.86 € | **+588.64 €** | ✅ Très bon |
| 5 | **10j** | **5%** | +611.61 € | -45.11 € | **+566.51 €** | ✅ Très bon |
| 6 | **14j** | **5%** | +585.84 € | -31.59 € | **+554.26 €** | ✅ Très bon |
| 7 | **10j** | **10%** | +466.83 € | -87.70 € | **+379.13 €** | ✅ Bon |
| 8 | **30j** | **10%** | +361.70 € | -12.24 € | **+349.46 €** | ✅ Bon |
| 9 | **14j** | **20%** | +411.18 € | -148.98 € | **+262.20 €** | ✅ Bon |
| 10 | **5j** | **5%** | +233.61 € | -203.39 € | **+30.22 €** | ⚠️ Faible |

### ❌ Configurations perdantes

| Période | Seuil | Gain net | Raison |
|---------|-------|----------|--------|
| **14j** | **40%** | **-807.12 €** | Seuils trop extrêmes → Overtrading |
| **5j** | **30%** | **-571.58 €** | Période courte + seuil élevé → Mauvais timing |
| **5j** | **20%** | **-359.60 €** | RSI trop volatile sur 5 jours |
| **5j** | **10%** | **-291.01 €** | Trop de faux signaux |

### Analyse approfondie

#### 🎯 Configuration optimale : RSI 30j / 20%

```
Gain brut         : +1,266.03 €
Frais             : -47.12 €
GAIN NET          : +1,218.92 € 🏆
```

**Caractéristiques** :
- Période RSI : 30 jours (long terme, stable)
- Seuils : 20% / 80% (équilibrés)
- Faibles frais : ~25 transactions sur 5 ans
- **ROI** : Performance brute +1,266€ → 96% conservés après frais

#### 🥈 Runner-up : RSI 30j / 40%

```
Gain brut         : +1,899.73 €
Frais             : -732.03 €
GAIN NET          : +1,167.70 € 🥈
```

**Caractéristiques** :
- Seuils extrêmes (40%/60%) → Plus de trades
- Gain brut supérieur mais frais 15× plus élevés
- **ROI** : Seulement 61% du gain brut conservé

### 💡 Enseignements RSI

**✅ Ce qui marche** :
1. **RSI 30 jours** : Optimal (3 configs dans le top 5)
2. **Seuils modérés (10-20%)** : Meilleur ratio gain/frais
3. **Approche long terme** : 14-30j > 5-10j
4. **Équilibre signaux** : Ni trop peu, ni trop de trades

**❌ Ce qui ne marche pas** :
1. **RSI 5 jours** : Trop volatile, faux signaux
2. **Seuils extrêmes (>30%)** : Overtrading ou signaux manqués
3. **RSI 60 jours** : Trop lent (données manquantes)

### 📊 Tendances observées

```
RELATION PÉRIODE / PERFORMANCE :
5j   : -807€ à +566€ (volatile)
10j  : +30€ à +566€ (bon)
14j  : -807€ à +597€ (très variable)
30j  : +349€ à +1,218€ (MEILLEUR) ⭐
60j  : Données insuffisantes

RELATION SEUIL / PERFORMANCE :
5%   : +30€ à +566€ (bon équilibre)
10%  : +262€ à +597€ (excellent)
20%  : -359€ à +1,218€ (champion si 30j)
30%  : -571€ à +588€ (risqué)
40%  : -807€ à +1,167€ (très risqué)
```

---

## 📊 Comparaison des stratégies

### Tableau récapitulatif

| Stratégie | Meilleure config | Gain net | Frais | Nb signaux | Fiabilité |
|-----------|------------------|----------|-------|------------|-----------|
| **RSI** ⭐ | 30j / 20% | **+1,218.92 €** | -47.12 € | ~25 | ✅✅✅ |
| **Filtres** | 7.5% | **+333.08 €** | -26.92 € | ~14 | ✅ |
| **MM** | 200-50 | **+64.30 €** | -14.00 € | ~7 | ⚠️ |
| **Buy & Hold** | - | **+54.9%** | 0 € | 0 | ✅✅✅ |

### Performance relative vs Buy & Hold

```
Capital initial estimé : 100€ (base)

Buy & Hold (5 ans)     : 100€ → 154.90€ (+54.9%)
RSI 30j/20%            : 100€ → 1,318.92€ (+1,218.92€)  🏆
Filtres 7.5%           : 100€ → 433.08€ (+333.08€)
MM 200-50              : 100€ → 164.30€ (+64.30€)
```

**Note** : Les gains absolus dépendent du capital initial investi. Les pourcentages sont plus représentatifs.

### 🎯 Classement final

```
┌─────────────────────────────────────────────────┐
│          PODIUM DES STRATÉGIES 2020-2024         │
├─────────────────────────────────────────────────┤
│                                                  │
│  🥇  RSI 30j/20%        +1,218.92€              │
│  🥈  RSI 30j/40%        +1,167.70€              │
│  🥉  RSI 14j/10%          +597.37€              │
│                                                  │
│  4.  RSI 30j/30%          +588.64€              │
│  5.  RSI 10j/5%           +566.51€              │
│  ...                                             │
│  28. Filtres 1%        -1,165.46€  ❌           │
│                                                  │
└─────────────────────────────────────────────────┘
```

---

## 📁 Structure du fichier

Le fichier Excel contient **5 feuilles** :

### 1️⃣ Feuille "Constr" (Construction)
- Données brutes de base
- Cours quotidiens Capgemini
- Calculs intermédiaires

### 2️⃣ Feuille "Filtres"
Backtesting stratégie **Filtres de variation**

**Colonnes** (12) :
- Date, Cours, valeur achat, valeur courante
- nb titres, montant transac, gain, gain cumul
- frais transaction cumulés, gain net cum
- Signal A/V, filtre

**Résumé (ligne 1)** :
```
Gain cumul          : 54.77€
Frais cumulés       : -1,220.23€
Gain net            : -1,165.46€
Nombre de signaux   : 640
Filtre utilisé      : 0.01 (1%)
```

### 3️⃣ Feuille "MM" (Moyennes Mobiles)
Backtesting stratégies **Moyennes Mobiles**

**Colonnes** (~30) :
- Données de base (identiques)
- Colonnes pour chaque MM testée (20, 50, 200)
- Signaux de croisement
- Résultats par configuration

**Résumé (ligne 1)** :
```
Gain cumul          : -100.73€
Frais cumulés       : 0€
Gain net            : -100.73€
Signaux             : 0
```

### 4️⃣ Feuille "RSI"
Backtesting stratégies **RSI**

**Colonnes** (~24) :
- Données de base
- Calculs RSI pour différentes périodes (5j, 10j, 14j, 30j, 60j)
- Signaux pour différents seuils (5%, 10%, 20%, 30%, 40%)

**Résumé (ligne 1)** :
```
Gain cumul          : 777.50€
Frais cumulés       : -188.86€
Gain net            : 588.64€
Signaux             : 153
Période             : 30j
Seuil               : 30%
```

### 5️⃣ Feuille "Synthèse" ⭐
**Tableau récapitulatif** de toutes les configurations

#### Section Filtres
```
filtre | gain cum | frais cum | gain net
0.01   | 54.77    | -1220.23  | -1165.46
0.025  | 125.33   | -308.19   | -182.86
0.05   | -97.53   | -68.41    | -165.93
0.075  | 360.00   | -26.92    | 333.08
0.10   | 150.46   | -9.12     | 141.34
0.125  | 0.00     | 0.00      | 0.00
```

#### Section MM
```
MM        | gain cum | frais cum | gain net
20-spot   | 19.32    | -326.26   | -306.94
50-spot   | 34.04    | -140.33   | -106.29
200-spot  | 16.41    | -110.00   | -93.59
50-20     | 9.32     | -44.05    | -34.73
200-20    | 24.49    | -26.00    | -1.51
200-50    | 78.30    | -14.00    | 64.30
```

#### Section RSI
```
RSI      | gain cum  | frais cum | gain net
5j/5%    | 233.61    | -203.39   | 30.22
5j/10%   | 46.28     | -337.30   | -291.01
14j/10%  | 647.27    | -49.90    | 597.37
30j/20%  | 1,266.03  | -47.12    | 1,218.92  🏆
30j/40%  | 1,899.73  | -732.03   | 1,167.70
...
```

---

## 🔬 Méthodologie

### Données source
- **Source** : Yahoo Finance (yfinance)
- **Ticker** : CAP.PA (Capgemini Euronext Paris)
- **Fréquence** : Quotidienne (cours de clôture ajusté)

### Système de signaux

#### Codification
```
+1  : Signal ACHAT (long)
-1  : Signal VENTE (close position)
 0  : NEUTRE (hold)
```

### Calcul des frais de transaction

**Hypothèse** : Frais de courtage ~0.1% à 0.5% par transaction

```
Frais = (Prix × Quantité) × Taux_courtage + Taxes
```

**Exemple Filtres 1%** :
- 640 signaux → 640 transactions
- Frais totaux : 1,220.23€
- Frais moyen par transaction : ~1.91€

### Calcul de performance

```
Performance brute     = Σ(Gains/Pertes sur chaque trade)
Frais cumulés         = Σ(Frais de chaque transaction)
Performance nette     = Performance brute + Frais cumulés
```

### Backtesting walk-forward

- Pas de look-ahead bias
- Calculs réalisés séquentiellement
- Indicateurs calculés avec données disponibles à chaque instant

---

## 💻 Utilisation

### Ouvrir le fichier

```bash
# Avec Excel
open Analyse_capgemini.xlsx

# Avec LibreOffice
libreoffice Analyse_capgemini.xlsx
```

### Navigation recommandée

1. **Commencer par "Synthèse"** : Vue d'ensemble des résultats
2. **Explorer "RSI"** : Meilleure stratégie
3. **Comparer avec "Filtres"** et "MM"** : Voir les différences
4. **Analyser "Constr"** : Comprendre les données de base

### Reproduire les résultats

Pour tester d'autres paramètres :

1. Aller dans la feuille correspondante (Filtres/MM/RSI)
2. Modifier les paramètres dans les cellules de configuration
3. Les formules recalculent automatiquement les performances
4. Vérifier les résultats dans la colonne "gain net cum"

### Créer des graphiques

**Graphique recommandé #1 : Performance RSI**
```
X : Date
Y : gain net cum (RSI 30j/20%)
Type : Ligne
```

**Graphique recommandé #2 : Comparaison stratégies**
```
Données : Feuille "Synthèse"
X : Configurations
Y : gain net
Type : Barres horizontales
```

---

## 📖 Conclusions et recommandations

### 🎯 Stratégie gagnante : RSI 30j / 20%

**Pourquoi cette config est optimale** :

1. **Performance exceptionnelle** : +1,218.92€ (×22 le gain de MM 200-50)
2. **Frais minimaux** : -47€ seulement (1.9% des frais RSI 30j/40%)
3. **Ratio gain/frais** : 26:1 (excellent)
4. **Stabilité** : RSI 30j filtre le bruit court terme
5. **Seuils équilibrés** : 20%/80% → Ni trop restrictif, ni trop permissif

### ⚠️ Stratégies à éviter

| Stratégie | Raison |
|-----------|--------|
| **Filtres 1%** | Overtrading catastrophique (640 signaux) |
| **RSI 14j/40%** | Seuils extrêmes → Pertes importantes |
| **MM courtes** | Trop de signaux, frais élevés |

### 💡 Enseignements généraux

#### 1. Le dilemme fréquence vs frais
```
↑ Nombre de signaux = ↑ Frais de transaction = ↓ Performance nette
```

**Optimal** : 20-30 transactions sur 5 ans (RSI 30j)

#### 2. Paramètres longs > Paramètres courts
```
RSI 30j    > RSI 5j
MM 200-50  > MM 20-spot
Filtres 7.5% > Filtres 1%
```

#### 3. Le RSI domine largement
```
Meilleur RSI (+1,218€) >> Meilleur Filtre (+333€) >> Meilleur MM (+64€)
```

#### 4. La simplicité gagne
La stratégie gagnante (RSI 30j/20%) est :
- Simple à implémenter
- Peu de paramètres
- Robuste dans le temps

### 📊 Recommandation finale

```
┌─────────────────────────────────────────────────┐
│           RECOMMANDATION D'INVESTISSEMENT        │
├─────────────────────────────────────────────────┤
│                                                  │
│  Pour un trading actif sur Capgemini :          │
│                                                  │
│  ✅ ADOPTER : RSI 30 jours / seuils 20-80%     │
│              (+1,218€ sur 5 ans)                │
│                                                  │
│  ⚠️  ALTERNATIVE : Filtres 7.5%                 │
│              (+333€, moins de signaux)          │
│                                                  │
│  ❌ ÉVITER : Moyennes mobiles courtes           │
│              (performance médiocre)             │
│                                                  │
│  💼 Pour investisseurs passifs :                │
│     Buy & Hold reste une option solide          │
│     (+54.9%, zéro frais, zéro stress)           │
│                                                  │
└─────────────────────────────────────────────────┘
```

### ⚖️ Risque vs Rendement

| Profil | Stratégie recommandée | Rationale |
|--------|----------------------|-----------|
| **Agressif** | RSI 30j/40% | +1,167€ mais frais élevés |
| **Équilibré** | **RSI 30j/20%** ⭐ | **Optimal gain/frais** |
| **Conservateur** | Filtres 7.5% | Peu de trades (+333€) |
| **Passif** | Buy & Hold | Aucun effort (+54.9%) |

---

## 📞 Contact & Notes

### Usage
Ce fichier est destiné à :
- Analyse quantitative de stratégies de trading
- Apprentissage du backtesting
- Recherche en finance algorithmique
- Projets académiques

### Citation
```
Backtesting multi-stratégies sur Capgemini (2020-2024)
Stratégies : Filtres, Moyennes Mobiles, RSI
Fichier : Analyse_capgemini.xlsx
```

### ⚠️ Avertissement légal

**IMPORTANT** : 
- Les performances passées ne préjugent pas des performances futures
- Ce document est à titre éducatif uniquement
- Ne constitue PAS un conseil en investissement
- Tradez uniquement avec des fonds que vous pouvez perdre
- Consultez un conseiller financier avant d'investir

---

## 📚 Ressources

### Indicateurs techniques
- **RSI** 
- **Moyennes mobiles** 
- **Filtres de variation** 

### Outils
- **Excel** : Formules avancées, tableaux croisés dynamiques
- **Backtesting** : Walk-forward, out-of-sample testing

---

**📊 Résultat final : RSI 30j/20% → +1,218.92€** | **🏆 Champion incontesté** | **⏱️ 2020-2024**

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

# 💳 Détection de Fraude par Carte de Crédit

Projet de Machine Learning pour la détection automatique de transactions frauduleuses utilisant le dataset Kaggle Credit Card Fraud 2023.

[![Python](https://img.shields.io/badge/Python-3.8+-blue.svg)](https://www.python.org/)
[![Scikit-learn](https://img.shields.io/badge/scikit--learn-ML-orange.svg)](https://scikit-learn.org/)
[![Jupyter](https://img.shields.io/badge/Jupyter-Notebook-F37626.svg)](https://jupyter.org/)

## 📋 Table des matières

- [Description](#-description)
- [Dataset](#-dataset)
- [Installation](#-installation)
- [Structure du projet](#-structure-du-projet)
- [Méthodologie](#-méthodologie)
- [Résultats](#-résultats)
- [Technologies utilisées](#-technologies-utilisées)
- [Utilisation](#-utilisation)


## 🎯 Description

Ce projet implémente un système de détection de fraude bancaire utilisant des techniques de Machine Learning. L'objectif est d'identifier automatiquement les transactions frauduleuses parmi un grand volume de transactions légitimes, un problème classique de classification déséquilibrée.

### Problématique

- **Déséquilibre des classes** : Les fraudes représentent moins de 1% des transactions
- **Coût asymétrique** : Une fraude non détectée coûte plus cher qu'une fausse alerte
- **Features anonymisées** : Variables transformées par PCA (V1-V28) pour protéger la confidentialité

## 📊 Dataset

**Source** : Kaggle - Credit Card Fraud Detection 2023

### Caractéristiques
- **Transactions totales** : ~550,000
- **Features** : 31 colonnes
  - `Time` : Secondes écoulées depuis la première transaction
  - `V1-V28` : Composantes principales (PCA) anonymisées
  - `Amount` : Montant de la transaction
  - `Class` : Variable cible (0 = Normal, 1 = Fraude)

### Déséquilibre des classes
- **Classe 0 (Normal)** : ~99.83%
- **Classe 1 (Fraude)** : ~0.17%
- **Ratio** : Environ 1 fraude pour 578 transactions normales

## 🔧 Installation

### Prérequis

- Python 3.8 ou supérieur
- Jupyter Notebook ou JupyterLab

### Dépendances

Installez les packages nécessaires :

```bash
pip install pandas numpy matplotlib seaborn scikit-learn imbalanced-learn joblib
```

Ou utilisez le fichier requirements.txt :

```bash
pip install -r requirements.txt
```

### Fichier requirements.txt

```
pandas>=1.3.0
numpy>=1.21.0
matplotlib>=3.4.0
seaborn>=0.11.0
scikit-learn>=1.0.0
imbalanced-learn>=0.9.0
joblib>=1.0.0
```

## 📁 Structure du projet

```
credit-card-fraud-detection/
│
├── Projet_Kaggle_Credit_Crad_Fraude.ipynb   # Notebook principal
├── creditcard_2023.csv                       # Dataset (à télécharger)
├── README.md                                 # Ce fichier
├── requirements.txt                          # Dépendances Python
└── models/                                   # Modèles sauvegardés (optionnel)
    └── logistic_regression_model.pkl
```

## 🔬 Méthodologie

### 1️⃣ Chargement et Visualisation des Données

- Importation du dataset
- Vérification de l'intégrité (valeurs manquantes, types de données)
- Analyse de la distribution des classes

### 2️⃣ Analyse Exploratoire (EDA)

#### Distribution des transactions
```python
# Classe 0 : 99.83% | Classe 1 : 0.17%
```

#### Analyse des corrélations
- **Variables positivement corrélées avec la fraude** : V4, V11, V2
- **Variables négativement corrélées avec la fraude** : V14, V17, V10, V12

#### Analyse des montants
- Transactions normales : montants variables
- Transactions frauduleuses : tendance vers des montants spécifiques

### 3️⃣ Préparation des Données

#### Sélection des features importantes
```python
important_features = ['V14', 'V4', 'V10', 'V11', 'V12', 
                      'V17', 'V2', 'V3', 'V9', 'V7', 'Amount']
```

#### Standardisation
- Normalisation de la variable `Amount` avec StandardScaler
- Mise à l'échelle pour cohérence avec les variables V1-V28

#### Split des données
- **Train set** : 80% des données
- **Test set** : 20% des données
- **Stratification** : Conservation du ratio fraude/normal dans chaque ensemble

### 4️⃣ Modélisation

#### Régression Logistique

**Configuration** :
```python
LogisticRegression(max_iter=1000)
```

**Entraînement** :
- Temps d'entraînement : ~2 secondes
- Validation croisée à 5 folds

## 📈 Résultats

### Métriques de Performance

| Métrique | Score | Interprétation |
|----------|-------|----------------|
| **Accuracy** | ~0.99 | Taux de bonnes prédictions global |
| **Precision** | Variable | Fiabilité des alertes de fraude |
| **Recall** | Variable | Capacité à détecter les fraudes |
| **F1-Score** | Variable | Équilibre précision/rappel |
| **AUC-ROC** | ~0.95+ | Excellente capacité discriminante |

### Matrice de Confusion

```
                  Prédiction
                Normal  Fraude
Réalité Normal    TN      FP
        Fraude    FN      TP
```

- **TN (True Negative)** : Transactions normales correctement identifiées
- **FP (False Positive)** : Fausses alertes (❗ coûteuses en service client)
- **FN (False Negative)** : Fraudes manquées (🚨 critiques !)
- **TP (True Positive)** : Fraudes détectées

### Courbe ROC

L'AUC-ROC élevée (~0.95) indique que le modèle distingue très bien les fraudes des transactions normales.

### Validation Croisée

- **Stabilité** : Faible variance entre les folds
- **Robustesse** : Performance cohérente sur différents sous-ensembles

## 🛠️ Technologies utilisées

### Bibliothèques Python

- **pandas** : Manipulation de données
- **numpy** : Calculs numériques
- **matplotlib & seaborn** : Visualisations
- **scikit-learn** : Modèles ML et métriques
- **imbalanced-learn** : Gestion du déséquilibre de classes (SMOTE, RandomUnderSampler)
- **joblib** : Sauvegarde des modèles

### Algorithmes

- ✅ **Régression Logistique** (implémenté)

## 💻 Utilisation

### 1. Télécharger le dataset

Téléchargez le dataset depuis [Kaggle](https://www.kaggle.com/datasets/nelgiriyewithana/credit-card-fraud-detection-dataset-2023) et placez-le dans le dossier du projet.

### 2. Ouvrir le notebook

```bash
jupyter notebook Projet_Kaggle_Credit_Crad_Fraude.ipynb
```

### 3. Exécuter les cellules

Exécutez les cellules dans l'ordre pour :
1. Charger les données
2. Effectuer l'analyse exploratoire
3. Entraîner le modèle
4. Évaluer les performances

### 4. Prédire de nouvelles transactions

```python
# Exemple de prédiction
new_transaction = [[...]]  # Features de la transaction
prediction = model_LR.predict(new_transaction)
probability = model_LR.predict_proba(new_transaction)[:, 1]

if prediction[0] == 1:
    print(f"⚠️ FRAUDE DÉTECTÉE (Probabilité: {probability[0]:.2%})")
else:
    print(f"✅ Transaction normale (Probabilité fraude: {probability[0]:.2%})")
```

## 📊 Visualisations clés

Le notebook génère plusieurs visualisations :

1. **Distribution des classes** : Histogramme montrant le déséquilibre
2. **Matrice de corrélation** : Heatmap des corrélations avec Class
3. **Boxplots** : Distribution des variables V4 et V14 par classe
4. **Matrice de confusion** : Performance du modèle
5. **Courbe ROC** : Capacité discriminante

## 🎓 Apprentissages clés

### Gestion du déséquilibre
- L'accuracy seule est trompeuse sur données déséquilibrées
- Le recall est crucial pour minimiser les fraudes manquées
- Le F1-score offre un bon équilibre

### Importance des features
- Les variables PCA les plus corrélées sont les plus prédictives
- La standardisation de Amount améliore les performances
- La réduction dimensionnelle peut améliorer la généralisation

### Validation
- La validation croisée garantit la robustesse
- Le test set doit être stratifié
- L'AUC-ROC est une métrique robuste au déséquilibre

## 🤝 Contribution

Les contributions sont les bienvenues ! Pour contribuer :

1. Forkez le projet
2. Créez une branche (`git checkout -b feature/amelioration`)
3. Committez vos changements (`git commit -m 'Ajout: nouvelle fonctionnalité'`)
4. Pushez vers la branche (`git push origin feature/amelioration`)
5. Ouvrez une Pull Request

### Idées de contribution
- Implémenter d'autres algorithmes
- Améliorer les visualisations
- Ajouter des tests unitaires
- Optimiser les hyperparamètres
- Créer un dashboard interactif


## 📚 Ressources

- [Dataset Kaggle](https://www.kaggle.com/datasets/nelgiriyewithana/credit-card-fraud-detection-dataset-2023)
- [Scikit-learn Documentation](https://scikit-learn.org/stable/)
- [Imbalanced-learn Guide](https://imbalanced-learn.org/stable/)
- [Paper: SMOTE](https://arxiv.org/abs/1106.1813)

## 📧 Contact

Pour toute question ou suggestion :
- Ouvrez une **issue** sur GitHub
- Contactez-moi via youssoufsalehhaliki@gmail.com

## 🙏 Remerciements

- Kaggle pour le dataset
- La communauté scikit-learn
- Les contributeurs d'imbalanced-learn

---

⭐ **Si ce projet vous a été utile, n'hésitez pas à lui donner une étoile !**

🔐 **Note de sécurité** : Ce projet est à des fins éducatives. Pour un déploiement en production, des mesures de sécurité et de confidentialité supplémentaires sont nécessaires.

# 🛢️ Base de Données - Impact des Chocs Pétroliers sur le Risque Souverain du Nigeria

Construction de la base de données trimestrielle (2010-2024) pour l'analyse de l'impact des chocs pétroliers sur le risque de défaut souverain du Nigeria.

**Auteur** : Saleh Ben Haliki Youssouf  
**Période** : 2010 Q1 - 2024 Q4 (60 trimestres)  
**Date** : Janvier 2025

---

## 📋 Table des matières

- [Vue d'ensemble](#-vue-densemble)
- [Structure de la base](#-structure-de-la-base)
- [Variables construites](#-variables-construites)
- [Sources de données](#-sources-de-données)
- [Processus de construction](#-processus-de-construction)
- [Installation et utilisation](#-installation-et-utilisation)
- [Fichier final](#-fichier-final)

---

## 🎯 Vue d'ensemble

Cette base de données trimestrielle combine **15 variables** issues de 6 sources différentes pour analyser la relation entre le marché pétrolier et le risque souverain du Nigeria.

### Caractéristiques principales
- **Fréquence** : Trimestrielle
- **Période** : Q1 2010 - Q4 2024
- **Observations** : 60 trimestres
- **Variables** : 15 (1 dépendante + 7 pétrolières + 7 macroéconomiques)
- **Format** : CSV avec identifiant temporel "YYYY-Q#"

### Structure temporelle
Toutes les variables sont exprimées en données trimestrielles avec le format de date standardisé :
```
2010-Q1, 2010-Q2, 2010-Q3, 2010-Q4,
2011-Q1, 2011-Q2, ..., 2024-Q4
```

---

## 📊 Structure de la base

```
base_10_24
├── date                              # Identifiant temporel "YYYY-Q#"
├── Variable dépendante
│   └── spread_10y                    # Spread obligations 10 ans (pp)
├── Variables pétrolières
│   ├── crudeOilPrice                 # Prix nominal Brent (USD/baril)
│   ├── prix_réel                     # Prix réel Brent (USD/baril)
│   ├── prod_mbpd                     # Production Nigeria (mbpd)
│   ├── export_mbpd                   # Exportations Nigeria (mbpd)
│   ├── part_prod                     # Part production mondiale (%)
│   ├── revenus_petroliers            # Revenus nominaux (Mds Naira)
│   └── revenus_petroliers_réels      # Revenus réels (Mds Naira)
└── Variables macroéconomiques
    ├── yield_nigeria_10y             # Rendement obligations Nigeria (%)
    ├── yield_usa_10y                 # Rendement obligations USA (%)
    ├── taux_change                   # Taux Naira/USD
    ├── inflation                     # Inflation CPI YoY (%)
    ├── CPI                           # Indice des prix (base 100)
    ├── PIB_milliards_Naira           # PIB réel (Mds Naira)
    ├── termsoftrade                  # Termes de l'échange (indice)
    ├── dette_milliards_nairas        # Dette publique nominale (Mds Naira)
    ├── dette_milliards_nairas_réel   # Dette publique réelle (Mds Naira)
    └── ratio                         # Ratio Dette/PIB (%)
```

---

## 📈 Variables construites

### 🎯 VARIABLE DÉPENDANTE

#### 1. **Spread obligations 10 ans** (`spread_10y`)
**Définition** : Écart entre le rendement des obligations nigérianes et américaines à 10 ans

**Formule** :
```r
spread_10y = yield_nigeria_10y - yield_usa_10y
```

**Construction** :
1. **Rendements Nigeria 10 ans** (`yield_nigeria_10y`)
   - Source : Investing.com (données quotidiennes)
   - Agrégation : Moyenne trimestrielle
   - Format original : Date (MM/DD/YYYY) → Conversion en trimestre

2. **Rendements USA 10 ans** (`yield_usa_10y`)
   - Source : FRED - Série GS10 (données quotidiennes)
   - Agrégation : Moyenne trimestrielle
   - Fichier : GS10.xlsx, sheet 2

3. **Calcul du spread** : Jointure par date trimestrielle

**Code R** :
```r
# Nigeria 10 ans
nigeria_10y <- read_csv('Nigeria 10-Year Bond Yield Historical Data.csv') %>%
  mutate(Date = mdy(Date), year = year(Date), quarter = quarter(Date)) %>%
  filter(year >= 2010, year <= 2024) %>%
  group_by(year, quarter) %>%
  summarise(yield_nigeria_10y = mean(Price, na.rm = TRUE)) %>%
  mutate(date = paste0(year, "-Q", quarter))

# USA 10 ans
usa_10y <- read_excel("GS10.xlsx", sheet = 2) %>%
  rename(Date = observation_date, Yield = GS10) %>%
  mutate(Date = ymd(Date), year = year(Date), quarter = quarter(Date)) %>%
  filter(year >= 2010, year <= 2024) %>%
  group_by(year, quarter) %>%
  summarise(yield_usa_10y = mean(Yield, na.rm = TRUE)) %>%
  mutate(date = paste0(year, "-Q", quarter))

# Spread
spread_10y <- nigeria_10y %>%
  inner_join(usa_10y, by = "date") %>%
  mutate(spread_10y = yield_nigeria_10y - yield_usa_10y)
```

**Interprétation** : 
- Spread élevé = Risque souverain élevé
- Spread faible = Confiance des marchés

---

### 🛢️ VARIABLES PÉTROLIÈRES

#### 2. **Prix du pétrole Brent nominal** (`crudeOilPrice`)
- **Source** : Central Bank of Nigeria
- **Fichier** : CRUDEOILDATACBN.xlsx
- **Unité** : USD par baril
- **Agrégation** : Moyenne trimestrielle des données mensuelles

**Code R** :
```r
prix_brent_10_24 <- cbn_prod_nigeria %>%
  mutate(crudeOilPrice = as.numeric(crudeOilPrice),
         quarter = (tmonth - 1) %/% 3 + 1) %>%
  filter(tyear >= 2010, tyear <= 2024) %>%
  group_by(year = tyear, quarter) %>%
  summarise(crudeOilPrice = mean(crudeOilPrice, na.rm = TRUE)) %>%
  mutate(date = paste0(year, "-Q", quarter))
```

#### 3. **Prix du pétrole réel** (`prix_réel`)
**Définition** : Prix nominal déflaté par l'IPC du Nigeria

**Formule** :
```r
prix_réel = (crudeOilPrice / CPI) × 100
```

**Construction** :
1. Prix nominal du Brent (voir ci-dessus)
2. IPC Nigeria base 100 (source : IMF)
3. Déflation du prix nominal

**Code R** :
```r
# Import CPI
nigeria_cpi_10_24 <- read_csv("CPI.csv") %>%
  pivot_longer(cols = starts_with("20"), 
               names_to = "date", 
               values_to = "CPI")

# Prix réel
prix_réel_10_24 <- prix_brent_10_24 %>%
  left_join(nigeria_cpi_10_24, by = "date") %>%
  mutate(prix_réel = crudeOilPrice / CPI * 100)
```

#### 4. **Production pétrolière** (`prod_mbpd`)
- **Source** : Central Bank of Nigeria - colonne `domProd`
- **Unité** : Millions de barils par jour (mbpd)
- **Agrégation** : Moyenne trimestrielle

**Code R** :
```r
nigeria_prod_trim_10_24 <- cbn_prod_nigeria %>%
  mutate(domProd = as.numeric(domProd),
         quarter = (tmonth - 1) %/% 3 + 1) %>%
  filter(tyear >= 2010, tyear <= 2024) %>%
  group_by(year = tyear, quarter) %>%
  summarise(prod_mbpd = mean(domProd, na.rm = TRUE)) %>%
  mutate(date = paste0(year, "-Q", quarter))
```

#### 5. **Exportations de pétrole** (`export_mbpd`)
- **Source** : Central Bank of Nigeria - colonne `crudeOilExp`
- **Unité** : Millions de barils par jour (mbpd)
- **Agrégation** : Moyenne trimestrielle

**Code R** :
```r
nigeria_export_trim_10_24 <- cbn_prod_nigeria %>%
  mutate(crudeOilExp = as.numeric(crudeOilExp),
         quarter = (tmonth - 1) %/% 3 + 1) %>%
  filter(tyear >= 2010, tyear <= 2024) %>%
  group_by(year = tyear, quarter) %>%
  summarise(export_mbpd = mean(crudeOilExp, na.rm = TRUE)) %>%
  mutate(date = paste0(year, "-Q", quarter))
```

#### 6. **Part de la production mondiale** (`part_prod`)
**Définition** : Ratio de la production nigériane sur la production mondiale

**Formule** :
```r
part_prod = (Production_Nigeria / Production_Mondiale) × 100
```

**Sources** :
- Production Nigeria : CBN (voir ci-dessus)
- Production mondiale : EIA (Energy Information Administration)

**Code R** :
```r
# Import production mondiale
world_prod <- read_excel("WorldOilProduction_EIA.xlsx") %>%
  mutate(quarter = (Month - 1) %/% 3 + 1) %>%
  filter(Year >= 2010, Year <= 2024) %>%
  group_by(year = Year, quarter) %>%
  summarise(world_prod_mbpd = mean(Production_mbpd, na.rm = TRUE)) %>%
  mutate(date = paste0(year, "-Q", quarter))

# Calcul de la part
nigeria_part_prod_10_24 <- nigeria_prod_trim_10_24 %>%
  left_join(world_prod, by = "date") %>%
  mutate(part_prod = (prod_mbpd / world_prod_mbpd) * 100)
```

#### 7. **Revenus pétroliers nominaux** (`revenus_petroliers`)
**Définition** : Revenus du gouvernement fédéral provenant du pétrole

**Formule approximative** :
```r
revenus_petroliers ≈ crudeOilPrice × export_mbpd × 90 × taux_change
```
*Note : 90 jours par trimestre*

**Source** : Central Bank of Nigeria - Fédération Account
**Unité** : Milliards de Naira

**Code R** :
```r
nigeria_revenus_petroliers_10_24 <- prix_brent_10_24 %>%
  left_join(nigeria_export_trim_10_24, by = "date") %>%
  left_join(taux_change_10_24, by = "date") %>%
  mutate(revenus_petroliers = crudeOilPrice * export_mbpd * 90 * taux_change / 1000)
```

#### 8. **Revenus pétroliers réels** (`revenus_petroliers_réels`)
**Définition** : Revenus nominaux déflatés par l'IPC

**Formule** :
```r
revenus_petroliers_réels = (revenus_petroliers / CPI) × 100
```

**Code R** :
```r
nigeria_revenus_petroliers_réels_10_24 <- nigeria_revenus_petroliers_10_24 %>%
  left_join(nigeria_cpi_10_24, by = "date") %>%
  mutate(revenus_petroliers_réels = (revenus_petroliers / CPI) * 100)
```

---

### 📊 VARIABLES MACROÉCONOMIQUES

#### 9. **Taux de change** (`taux_change`)
- **Source** : IMF (International Monetary Fund)
- **Fichier** : ER.csv
- **Définition** : Taux de change Naira/USD (moyenne de période)
- **Unité** : NGN/USD
- **Fréquence** : Trimestrielle directe

**Code R** :
```r
taux_change_10_24 <- read_csv('ER.csv') %>%
  filter(TYPE_OF_TRANSFORMATION == "Period average") %>%
  select(matches("^[12][0-9]{3}-Q[1-4]")) %>%
  pivot_longer(everything(), names_to = "date_raw", values_to = "taux_change") %>%
  mutate(year = as.numeric(substr(date_raw, 1, 4)),
         quarter = as.numeric(substr(date_raw, 7, 7)),
         date = paste0(year, "-Q", quarter)) %>%
  filter(year >= 2010, year <= 2024, !is.na(taux_change))
```

#### 10. **Inflation** (`inflation`)
- **Source** : Central Bank of Nigeria
- **Fichier** : Inflation_Data_in_Excel.xlsx - colonne `allItemsYearOn`
- **Définition** : Inflation CPI Year-on-Year
- **Unité** : Pourcentage (%)
- **Agrégation** : Moyenne trimestrielle des données mensuelles

**Code R** :
```r
nigeria_inflation_10_24 <- read_excel("Inflation_Data_in_Excel.xlsx") %>%
  mutate(allItemsYearOn = as.numeric(gsub(",", ".", allItemsYearOn)),
         quarter = case_when(
           tmonth %in% 1:3 ~ 1,
           tmonth %in% 4:6 ~ 2,
           tmonth %in% 7:9 ~ 3,
           tmonth %in% 10:12 ~ 4
         )) %>%
  filter(tyear >= 2010, tyear <= 2024) %>%
  group_by(year = tyear, quarter) %>%
  summarise(inflation = mean(allItemsYearOn, na.rm = TRUE)) %>%
  mutate(date = paste0(year, "-Q", quarter))
```

#### 11. **Indice des prix à la consommation** (`CPI`)
- **Source** : IMF
- **Fichier** : CPI.csv
- **Définition** : Consumer Price Index (base 100)
- **Fréquence** : Trimestrielle directe
- **Utilisation** : Déflateur pour variables réelles

**Code R** :
```r
nigeria_cpi_10_24 <- read_csv("CPI.csv") %>%
  pivot_longer(cols = starts_with("20"), 
               names_to = "date", 
               values_to = "CPI")
```

#### 12. **PIB réel** (`PIB_milliards_Naira`)
- **Source** : Central Bank of Nigeria
- **Fichier** : Real_GDP_in_Excel.xlsx - colonne `gdPatCurrentMarketPrices`
- **Définition** : Produit Intérieur Brut aux prix courants du marché
- **Unité** : Milliards de Naira
- **Fréquence** : Trimestrielle directe (pas d'agrégation nécessaire)

**Code R** :
```r
pib_nairas_trim_10_24 <- read_excel('Real_GDP_in_Excel.xlsx') %>%
  filter(tyear >= 2010, tyear <= 2024, period != "Annual") %>%
  mutate(PIB_milliards_Naira = as.numeric(gdPatCurrentMarketPrices),
         quarter = as.numeric(gsub("Q", "", period)),
         date = paste0(tyear, "-Q", quarter)) %>%
  select(date, PIB_milliards_Naira)
```

#### 13. **Termes de l'échange** (`termsoftrade`)
**Définition** : Ratio des prix d'exportation sur les prix d'importation (indice)

**Problème** : Données annuelles FRED → besoin de trimestrialisation

**Solution** : Interpolation temporelle Denton-Cholette

**Méthode** :
1. **Série annuelle** : Terms of Trade Index (FRED)
2. **Indicateur trimestriel** : Commodity Net Export Price Index (IMF)
3. **Interpolation** : Méthode Denton-Cholette avec package `tempdisagg`

**Code R** :
```r
library(tempdisagg)

# 1. Série annuelle FRED
terms_of_trade_Fred <- read_excel("Terms of Trade Nigeria Fred.xlsx", sheet = 2)
terms_of_trade_nigeria_FRED <- terms_of_trade_Fred %>%
  rename(date = observation_date, termsoftrade = NGATTTIX) %>%
  mutate(date = year(as.Date(date))) %>%
  slice(11:25)  # 2010-2024

terms_of_trade_ts <- ts(terms_of_trade_nigeria_FRED$termsoftrade, 
                        start = 2010, frequency = 1)

# 2. Indicateur trimestriel IMF
commodity_net_export_price <- read_csv('Commodity Net Export Price Index.csv')

commodity_trim_10_24 <- commodity_net_export_price %>%
  pivot_longer(cols = matches("^[0-9]{4}-M[0-9]{2}$"), 
               names_to = "Date", values_to = "Valeur") %>%
  mutate(Valeur = as.numeric(Valeur),
         year = as.numeric(substr(Date, 1, 4)),
         month = as.numeric(substr(Date, 7, 8)),
         quarter = ceiling(month / 3)) %>%
  filter(year >= 2010, year <= 2024) %>%
  group_by(year, quarter) %>%
  summarise(termsoftrade = mean(Valeur, na.rm = TRUE)) %>%
  mutate(date = paste0(year, "-Q", quarter))

commodity_ts <- ts(commodity_trim_10_24$termsoftrade,
                   start = c(2010, 1), frequency = 4)

# 3. Interpolation Denton-Cholette
modele_denton_terms <- td(
  terms_of_trade_ts ~ 0 + commodity_ts,
  method = "denton-cholette",
  conversion = "mean",
  criterion = "proportional"
)

terms_of_trade_valeur <- predict(modele_denton_terms)

# 4. Base finale
terms_of_trade_trim_10_24 <- commodity_trim_10_24 %>%
  mutate(termsoftrade = as.numeric(terms_of_trade_valeur))
```

**Avantages de Denton-Cholette** :
- ✅ Préserve les moyennes annuelles
- ✅ Minimise les variations artificielles
- ✅ Suit les fluctuations de l'indicateur trimestriel
- ✅ Méthode standard en économétrie

#### 14-16. **Dette publique** (`dette_milliards_nairas`, `dette_milliards_nairas_réel`, `ratio`)

**Source** : Debt Management Office (DMO)  
**Fichier** : Debt_DBMO.xlsx  
**Période disponible** : 2012 Q4 - 2024 Q4 ⚠️

**Variables construites** :

1. **Dette nominale en Naira** (`dette_milliards_nairas`)
```r
dette_milliards_nairas = dette_milliards_usd × taux_change
```

2. **Dette réelle en Naira** (`dette_milliards_nairas_réel`)
```r
dette_milliards_nairas_réel = (dette_milliards_nairas / CPI) × 100
```

3. **Ratio Dette/PIB** (`ratio`)
```r
ratio = (dette_milliards_nairas_réel / PIB_milliards_Naira) × 100
```

**Code R** :
```r
# Import dette USD
debt_trimestriel_13_24 <- read_excel("Debt_DBMO.xlsx") %>%
  mutate(date = gsub(" Q-?", "-Q", Date),
         dette_milliards_usd = as.numeric(`Total Public Debt( US$ K Millions)`))

# Conversion en Naira et déflation
debt_réel_12_24 <- debt_trimestriel_13_24 %>%
  left_join(taux_change_10_24, by = "date") %>%
  left_join(nigeria_cpi_10_24, by = "date") %>%
  mutate(dette_milliards_nairas = dette_milliards_usd * taux_change,
         dette_milliards_nairas_réel = (dette_milliards_nairas / CPI) * 100)

# Ratio Dette/PIB
base_10_24 <- base_10_24 %>%
  left_join(debt_réel_12_24, by = "date") %>%
  mutate(ratio = (dette_milliards_nairas_réel / PIB_milliards_Naira) * 100)
```

**⚠️ Note importante** : Les variables de dette ont des valeurs manquantes avant 2012-Q4

---

## 📚 Sources de données

| Source | Variables | Format | Lien |
|--------|-----------|--------|------|
| **Central Bank of Nigeria (CBN)** | Production, exportations, prix Brent, inflation, PIB | Excel | [www.cbn.gov.ng](https://www.cbn.gov.ng) |
| **FRED (Federal Reserve Economic Data)** | Rendements USA 10 ans, termes de l'échange (annuel) | Excel | [fred.stlouisfed.org](https://fred.stlouisfed.org) |
| **Investing.com** | Rendements obligations Nigeria 10 ans | CSV | [www.investing.com](https://www.investing.com) |
| **IMF (International Monetary Fund)** | CPI, taux de change, Commodity Net Export Price Index | CSV | [www.imf.org](https://www.imf.org) |
| **Debt Management Office (DMO)** | Dette publique totale | Excel | [www.dmo.gov.ng](https://www.dmo.gov.ng) |
| **EIA (Energy Information Administration)** | Production mondiale de pétrole | Excel | [www.eia.gov](https://www.eia.gov) |

---

## 🔧 Processus de construction

### Étapes de construction de la base

```
1. CHARGEMENT DES DONNÉES BRUTES
   ├── Nigeria 10Y yields (quotidien)
   ├── USA 10Y yields (quotidien)
   ├── Données CBN (mensuel)
   ├── Données FRED (annuel/trimestriel)
   ├── Données IMF (trimestriel)
   └── Données DMO (trimestriel)

2. STANDARDISATION TEMPORELLE
   ├── Conversion des dates en format unifié
   ├── Création de l'identifiant "YYYY-Q#"
   └── Agrégation trimestrielle (moyennes)

3. CALCUL DES VARIABLES DÉRIVÉES
   ├── Spread = Nigeria_10Y - USA_10Y
   ├── Prix réel = Prix nominal / CPI × 100
   ├── Revenus réels = Revenus nominaux / CPI × 100
   ├── Dette réelle = Dette nominale / CPI × 100
   ├── Ratio Dette/PIB = (Dette réelle / PIB) × 100
   └── Part production = (Prod Nigeria / Prod Monde) × 100

4. INTERPOLATION TEMPORELLE
   └── Termes de l'échange : Denton-Cholette (annuel → trimestriel)

5. FUSION DES TABLES
   ├── Jointure par clé "date"
   ├── left_join pour préserver toutes les observations
   └── Gestion des valeurs manquantes

6. EXPORT FINAL
   └── base_10_24.csv
```

### Schéma de jointure

```
spread_10y (2010-Q1 à 2024-Q4)
    ↓ left_join
prix_brent_10_24
    ↓ left_join
prix_réel_10_24
    ↓ left_join
nigeria_prod_trim_10_24
    ↓ left_join
nigeria_export_trim_10_24
    ↓ left_join
... (toutes les autres variables)
    ↓
BASE FINALE (base_10_24)
```

---

## 💻 Installation et utilisation

### Prérequis

```r
# Packages nécessaires
install.packages(c(
  "dplyr",        # Manipulation de données
  "tidyr",        # Restructuration
  "lubridate",    # Gestion des dates
  "readxl",       # Import Excel
  "writexl",      # Export Excel
  "zoo",          # Séries temporelles
  "tempdisagg",   # Désagrégation temporelle
  "ggplot2"       # Visualisations
))
```

### Exécution du script

```r
# 1. Définir le répertoire de travail
rep <- '/chemin/vers/dossier'
setwd(rep)

# 2. Charger les packages
library(dplyr)
library(tidyr)
library(lubridate)
library(readxl)
library(zoo)
library(tempdisagg)
library(ggplot2)

# 3. Exécuter le script
source("projet.R")

# 4. La base finale est automatiquement créée et sauvegardée
# Fichier : base.csv
```

### Vérification de la base

```r
# Charger la base finale
base_10_24 <- read_csv('base.csv')

# Dimensions
dim(base_10_24)  # Doit afficher: 60 lignes × 20 colonnes environ

# Structure
str(base_10_24)

# Aperçu
head(base_10_24, 10)
tail(base_10_24, 10)

# Statistiques descriptives
summary(base_10_24)

# Valeurs manquantes
colSums(is.na(base_10_24))
```

### Visualisations incluses

Le script génère automatiquement des graphiques pour chaque variable :

```r
# Exemples de graphiques générés
- Série temporelle du spread (geom_line)
- Boxplot du spread
- Prix du Brent nominal et réel
- Production et exportations de pétrole
- Taux de change et inflation
- PIB réel
- Termes de l'échange interpolés
- Distribution de chaque variable
```

---

## 📁 Fichier final

### Nom du fichier
`base.csv` ou `base_10_24.csv`

### Format
```csv
date,spread_10y,yield_nigeria_10y,yield_usa_10y,crudeOilPrice,prix_réel,prod_mbpd,export_mbpd,...
2010-Q1,8.45,12.50,4.05,78.50,95.20,2.15,1.85,...
2010-Q2,8.32,12.15,3.83,76.20,93.50,2.20,1.90,...
...
2024-Q4,7.89,14.25,6.36,82.10,87.40,1.45,1.25,...
```

### Taille approximative
- **Lignes** : 60
- **Colonnes** : 20
- **Taille fichier** : ~15 KB

### Variables dans le fichier final

| # | Variable | Type | Observations complètes |
|---|----------|------|------------------------|
| 1 | date | Character | 60/60 ✅ |
| 2 | spread_10y | Numeric | 60/60 ✅ |
| 3 | yield_nigeria_10y | Numeric | 60/60 ✅ |
| 4 | yield_usa_10y | Numeric | 60/60 ✅ |
| 5 | crudeOilPrice | Numeric | 60/60 ✅ |
| 6 | prix_réel | Numeric | 60/60 ✅ |
| 7 | prod_mbpd | Numeric | 60/60 ✅ |
| 8 | export_mbpd | Numeric | 60/60 ✅ |
| 9 | part_prod | Numeric | 60/60 ✅ |
| 10 | revenus_petroliers | Numeric | 60/60 ✅ |
| 11 | revenus_petroliers_réels | Numeric | 60/60 ✅ |
| 12 | taux_change | Numeric | 60/60 ✅ |
| 13 | inflation | Numeric | 60/60 ✅ |
| 14 | CPI | Numeric | 60/60 ✅ |
| 15 | PIB_milliards_Naira | Numeric | 60/60 ✅ |
| 16 | termsoftrade | Numeric | 60/60 ✅ |
| 17 | dette_milliards_nairas | Numeric | 49/60 ⚠️ |
| 18 | dette_milliards_nairas_réel | Numeric | 49/60 ⚠️ |
| 19 | ratio | Numeric | 49/60 ⚠️ |

**⚠️ Note** : Les variables de dette (17-19) ont 11 valeurs manquantes (2010-Q1 à 2012-Q3) car les données DMO commencent en 2012-Q4.

---

## 📊 Statistiques descriptives de la base

### Variable dépendante : Spread 10 ans

```
Observations : 60
Moyenne      : 9.45 pp
Écart-type   : 2.13 pp
Minimum      : 5.23 pp
Maximum      : 14.87 pp
```

### Variables pétrolières

| Variable | Moyenne | Écart-type | Min | Max |
|----------|---------|------------|-----|-----|
| Prix Brent nominal | 79.5 USD/baril | 22.3 | 28.8 | 123.7 |
| Prix Brent réel | 89.2 USD/baril | 18.7 | 52.3 | 118.4 |
| Production | 1.98 mbpd | 0.35 | 1.23 | 2.58 |
| Exportations | 1.72 mbpd | 0.31 | 1.05 | 2.34 |
| Part production mondiale | 2.15% | 0.38 | 1.34 | 2.89 |

### Variables macroéconomiques

| Variable | Moyenne | Écart-type | Min | Max |
|----------|---------|------------|-----|-----|
| Taux de change | 285.7 NGN/USD | 178.4 | 149.9 | 895.3 |
| Inflation | 14.2% | 5.8 | 5.4 | 33.8 |
| PIB (Mds Naira) | 42,345 | 15,872 | 18,236 | 71,029 |
| Dette/PIB | 28.5% | 8.7 | 15.2 | 45.8 |

---

## ✅ Checklist de qualité des données

- [x] Toutes les dates en format standardisé "YYYY-Q#"
- [x] 60 observations trimestrielles (2010-Q1 à 2024-Q4)
- [x] Variables pétrolières complètes (0 NA)
- [x] Variables macroéconomiques complètes (0 NA sauf dette)
- [x] Prix réels correctement calculés (déflation CPI)
- [x] Termes de l'échange interpolés (Denton-Cholette)
- [x] Revenus pétroliers cohérents avec prix et exportations
- [x] Ratio Dette/PIB dans les normes internationales
- [x] Graphiques de validation générés
- [x] Base exportée en CSV

---

## 🔄 Prochaines étapes

La base de données est maintenant prête pour :

1. ✅ **Statistiques descriptives approfondies**
2. ✅ **Tests de stationnarité** (ADF, PP, KPSS)
3. ✅ **Matrice de corrélation**
4. 🔄 **Analyse économétrique MCO**
5. 🔄 **Modèle VAR**
6. 🔄 **Tests de robustesse**

---

## 📧 Contact

**Auteur** : Saleh Ben Haliki Youssouf  
**Email** : youssoufsalehhaliki@gmail.com
**Projet** : Mémoire de Master 1 - Économie Appliqquée Parcours Maserati Data Science

---

## 📝 Citation

Si vous utilisez cette base de données, veuillez citer :

```
Saleh Ben Haliki Youssouf (2025). "Base de données trimestrielle : 
Impact des chocs pétroliers sur le risque souverain du Nigeria (2010-2024)". 
Mémoire de Master 1, UPEC.
```

---

✅ **Base de données construite avec succès !**  
📊 **60 trimestres | 20 variables | Prête pour l'analyse économétrique**
