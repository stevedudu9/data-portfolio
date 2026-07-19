# Apple Stock Time-Series Analysis

## Overview

This notebook downloads Apple (AAPL) market data for 2024 and explores closing prices, moving averages, daily returns, and volatility.

## Analysis

- Inspect the downloaded price history and summary statistics
- Compare the closing price with 10-day and 30-day moving averages
- Calculate and visualize daily percentage returns
- Measure volatility with the standard deviation of daily returns
- Identify the best and worst daily returns in the period

## Run the notebook

From the repository root, install the shared dependencies, then open the project directory:

```bash
python -m pip install -r requirements.txt
cd projects/apple-stock-analysis
jupyter notebook apple_stock_analysis.ipynb
```

The notebook downloads data from Yahoo Finance at runtime, so an internet connection is required. Market data can change when the notebook is rerun because providers may adjust historical prices.

## Limitations

This is descriptive analysis, not an investing model. It covers one stock and one year, does not account for a benchmark or risk-free rate, and should not be interpreted as financial advice.

## Next improvements

- Compare AAPL with a broad-market benchmark
- Add annualized return and drawdown measures
- Separate adjusted and unadjusted price assumptions
- Add reusable functions and automated checks
