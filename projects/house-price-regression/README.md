# House Price Regression

## Overview

This notebook builds a baseline linear-regression model for house prices using three features from the Ames Housing dataset: above-ground living area, bedrooms, and full bathrooms.

## Workflow

1. Select and summarize the modeling columns.
2. Visualize living area against sale price.
3. Split the data into training and test sets.
4. Fit a linear-regression baseline.
5. Evaluate predictions with RMSE and an actual-versus-predicted plot.
6. Interpret the model coefficients and limitations.

## Dataset setup

Download `train.csv` from Kaggle's **House Prices: Advanced Regression Techniques** competition and save it here:

```text
projects/house-price-regression/data/train.csv
```

The dataset is not committed to this repository. This keeps the project lightweight and avoids redistributing data without clear license documentation.

## Run the notebook

From the repository root, install the shared dependencies, then open the project directory:

```bash
python -m pip install -r requirements.txt
cd projects/house-price-regression
jupyter notebook house_price_regression.ipynb
```

## Limitations

- Three features cannot capture location, quality, age, and many other drivers of price.
- Linear regression is sensitive to influential outliers.
- RMSE from one train/test split is less reliable than cross-validation.
- Coefficients describe conditional associations in this model; they do not establish causation.

## Next improvements

- Compare against a mean-prediction baseline
- Use cross-validation and report MAE alongside RMSE
- Add preprocessing for numeric and categorical features
- Compare regularized linear models and tree-based models
