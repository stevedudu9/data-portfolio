# Data Analytics Portfolio

A curated collection of Python, SQL, visualization, and introductory machine-learning work. Each featured project contains its own overview, source files, findings, and run instructions.

## Featured projects

| Project | Focus | Tools | Highlights |
| --- | --- | --- | --- |
| [Netflix content analysis](projects/netflix-content-analysis/) | Exploratory analysis across 8,800+ titles | Python, pandas, Matplotlib, SQL | Content mix, countries, ratings, and release trends |
| [House price regression](projects/house-price-regression/) | Predictive modeling on the Ames housing dataset | Python, pandas, seaborn, scikit-learn | Linear regression, RMSE, coefficient interpretation |
| [Apple stock analysis](projects/apple-stock-analysis/) | Time-series exploration of AAPL prices | Python, pandas, Matplotlib, yfinance | Moving averages, daily returns, and volatility |

## SQL practice

The [SQL movie exercises](exercises/sql-movies/) preserve three progressive learning exercises—basic filtering, aggregation, and joins—without presenting them as separate portfolio projects.

## Repository structure

```text
.
├── projects/
│   ├── apple-stock-analysis/
│   ├── house-price-regression/
│   └── netflix-content-analysis/
├── exercises/
│   └── sql-movies/
├── requirements.txt
└── README.md
```

## Run locally

```bash
git clone https://github.com/stevedudu9/data-portfolio.git
cd data-portfolio
python -m venv .venv
```

Activate the virtual environment, then install the shared dependencies:

```bash
python -m pip install -r requirements.txt
```

Open the notebooks with Jupyter, or follow the instructions in each project README. The house-price notebook requires the Kaggle dataset to be downloaded separately; its README explains where to place it.

## Skills demonstrated

- Data cleaning and exploratory analysis
- Data visualization and interpretation
- SQL filtering, aggregation, sorting, and joins
- Regression modeling and evaluation
- Clear project documentation and reproducible folder organization

## Next improvements

- Add automated checks for Python and SQL files
- Expand model evaluation with cross-validation and additional baselines
- Add a dashboard project using Power BI, Tableau, or Streamlit
- Turn the strongest project into a standalone repository only after it has a complete data pipeline, tests, and a distinct audience
