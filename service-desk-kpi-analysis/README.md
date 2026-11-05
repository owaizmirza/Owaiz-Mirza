# Service Desk KPI Analysis — SQL Portfolio Case Study

**Independent educational simulation** · **100 synthetic IT requests** · Python 3 / SQLite / SQL / CSV

## The question

How big is the unresolved backlog, which teams own it, and how well did **resolved tickets** meet their first-response targets?

## Key sample results

| Measure | Result |
| --- | ---: |
| Total tickets | 100 |
| Open tickets | **26** |
| Resolved tickets | 74 |
| Resolved-only first-response target attainment | **82.4%** |

**[Read the detailed tables and interpretation →](docs/sample-results.md)**

## How I approached it

1. Defined the ticket status and SLA denominator.
2. Grouped open requests by assigned team.
3. Compared first-response target attainment across priority levels.
4. Called out missing data before suggesting additional KPIs.

## Reproduce the results

Requires **Python 3**, with no third-party dependencies.

~~~bash
python run_analysis.py
~~~

Files: [Sample data](data/requests.csv) · [SQL queries](queries.sql) · [Runner](run_analysis.py) · [Results](docs/sample-results.md) · [Analysis notes](docs/findings.md)

**Important limitation:** `first_response_hours` is missing for open requests. The metric shown here is **not** an all-ticket SLA, and it cannot measure resolution time or backlog aging. Targets are illustrative and all data is synthetic.
