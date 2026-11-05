# Sample SQL Analysis Results — Retail Sales

> **Portfolio exercise only:** All transactions are synthetic. The numbers below are computed from the repository's sample CSV and are not results from a real business.

## Snapshot

| Metric | Value |
| --- | ---: |
| Total orders | 240 |
| Completed orders | 214 |
| Returned orders | 26 |
| Completed-order revenue | $52,205.45 |
| Returned orders / all orders | 10.8% |

Revenue is calculated as `quantity × unit_price_usd × (1 - discount_pct / 100)` for **Completed** records only. Returned records contribute zero. Tax, shipping, costs, and refund accounting are out of scope.

## Revenue by month

| Month | Completed orders | Revenue |
| --- | ---: | ---: |
| 2026-01 | 36 | $9,909.95 |
| 2026-02 | 39 | $8,612.40 |
| 2026-03 | 36 | $9,082.00 |
| 2026-04 | 36 | $8,068.95 |
| 2026-05 | 33 | $9,458.40 |
| 2026-06 | 34 | $7,073.75 |

## Revenue by product category

| Category | Completed orders | Revenue |
| --- | ---: | ---: |
| Equipment | 61 | $26,057.75 |
| Software | 62 | $15,141.55 |
| Services | 33 | $6,823.00 |
| Accessories | 58 | $4,183.15 |

## Revenue by region

| Region | Completed orders | Revenue |
| --- | ---: | ---: |
| East | 59 | $15,672.40 |
| West | 47 | $12,403.65 |
| North | 51 | $12,100.45 |
| South | 57 | $12,028.95 |

## Return rate by sales channel

| Channel | All orders | Returned orders | Return rate |
| --- | ---: | ---: | ---: |
| Online | 116 | 17 | 14.7% |
| Retail | 75 | 6 | 8.0% |
| Partner | 49 | 3 | 6.1% |

## What stands out in this sample?

- **Equipment** accounts for the largest completed-order revenue: **$26,057.75** (49.9% of total). This is a revenue concentration observation, not a margin conclusion.
- **East** leads regional completed-order revenue at **$15,672.40**. A real investigation would normalize for customer and order mix before attributing this to regional performance.
- **Online** has the highest return percentage in this small sample: **14.7%** (17 of 116 orders). It would be premature to claim a recurring channel problem without a larger period and category mix analysis.
- Monthly totals are descriptive only. The records were synthetically generated, so apparent trends should not be interpreted as seasonality or causation.

## SQL behind the results

See [queries.sql](../queries.sql) for the actual SQLite queries and [run_analysis.py](../run_analysis.py) to recreate tabular output locally. This page reports values from the published CSV, using the same filter and aggregation logic.

## Limits and next questions

The data lacks customer IDs, unit costs, shipping fees, and refund transactions. In a real engagement, I would validate the reporting definitions with finance and sales, then examine sales mix, contribution margin, and return reasons before recommending a business action.
