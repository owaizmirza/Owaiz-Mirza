# Retail Sales Performance — SQL Portfolio Case Study

**Independent educational simulation** | **Data:** 240 synthetic orders, January–June 2026 | **Stack:** Python 3, SQLite, SQL, CSV.

## Business questions
How does completed-order revenue vary by month, region, and category? Which sales channel has the highest proportion of returned orders?

## Run
~~~bash
python run_analysis.py
~~~

No third-party Python packages are required.

## Dataset
- order_id, order_date: unique synthetic order identifier and order date.
- region: North, South, East, West.
- channel: Online, Retail, Partner.
- product_category: Software, Equipment, Accessories, Services.
- quantity, unit_price_usd, discount_pct: pricing inputs.
- order_status: Completed or Returned.

**Recognized revenue in this simplified scenario:** sum of quantity × unit price × (1 − discount% / 100) for Completed orders only. Returned orders contribute zero; tax, shipping, refunds, and accounting policy are deliberately excluded. **Return rate:** Returned orders / all orders.

Files: [data](data/sales.csv) | [SQL queries](queries.sql) | [Python runner](run_analysis.py) | [Discussion](docs/findings.md).

This is a learning demonstration, not actual business transactions or GAAP revenue reporting.
