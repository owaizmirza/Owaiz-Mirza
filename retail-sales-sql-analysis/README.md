# Retail Sales Performance — SQL Portfolio Case Study

**Independent educational simulation** · **240 synthetic orders, January–June 2026** · Python 3 / SQLite / SQL / CSV

## The question

How does completed-order revenue vary by month, category, and region? Which sales channels have more returns in this sample?

## Key sample results

| Measure | Result |
| --- | ---: |
| Completed-order revenue | **$52,205.45** |
| Orders (completed + returned) | 240 |
| Return rate (by order count) | 10.8% |
| Highest-revenue category | Equipment |

**[Read the detailed tables and interpretation →](docs/sample-results.md)**

## How I approached it

1. Defined what counts as revenue and which orders should be included.
2. Used SQL groupings for monthly, regional, category, and channel-level reporting.
3. Checked how the metrics change depending on the numerator and denominator.
4. Documented the limitations before drawing a business conclusion.

## Reproduce the results

Requires **Python 3**, with no third-party dependencies.

~~~bash
python run_analysis.py
~~~

Files: [Sample data](data/sales.csv) · [SQL queries](queries.sql) · [Runner](run_analysis.py) · [Results](docs/sample-results.md) · [Analysis notes](docs/findings.md)

**Metric scope:** Completed-order revenue = `SUM(quantity * unit_price_usd * (1 - discount_pct/100))` over Completed orders. Returned orders contribute zero. This is a simplified portfolio metric, not formal accounting revenue. The entire dataset is fictional; conclusions do not describe an actual retailer.
