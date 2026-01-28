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
