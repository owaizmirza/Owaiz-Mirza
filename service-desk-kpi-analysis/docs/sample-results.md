# Sample SQL Analysis Results — Service Desk KPIs

> **Portfolio exercise only:** These are synthetic tickets. The metrics below describe the sample CSV, not the performance of an actual service team.

## Snapshot

| Metric | Value |
| --- | ---: |
| Total requests | 100 |
| Open requests at snapshot | 26 |
| Resolved requests | 74 |
| Resolved tickets meeting first-response target | 61 |
| Resolved-only first-response target attainment | 82.4% |

**Important denominator:** The response performance rate is **resolved tickets meeting target ÷ all resolved tickets**. It is **not** an all-ticket first-response SLA. First-response data for open tickets is missing in this sample, so they are excluded.

## Open backlog by team

| Team | All tickets assigned | Open tickets |
| --- | ---: | ---: |
| Service Desk | 36 | 9 |
| Workplace IT | 24 | 8 |
| Applications | 33 | 6 |
| Network | 7 | 3 |

## First response performance by priority — resolved tickets only

| Priority | Resolved tickets | Met target | Attainment | Average response (hours) |
| --- | ---: | ---: | ---: | ---: |
| Critical | 4 | 1 | 25.0% | 8.6 |
| High | 17 | 13 | 76.5% | 19.3 |
| Medium | 32 | 27 | 84.4% | 49.4 |
| Low | 21 | 20 | 95.2% | 84.1 |

Targets in this exercise are Critical = 8, High = 24, Medium = 72, Low = 120 **elapsed** hours. They are illustrative, not actual contractual commitments.

## Request mix

| Category | Tickets |
| --- | ---: |
| Hardware | 21 |
| Application | 34 |
| Access | 33 |
| Network | 12 |

## What the sample suggests — and doesn't

- The open backlog contains **26** tickets across 4 assigned teams. This alone cannot tell us which queue is slowest or most efficient.
- The resolved-only first-response target attainment is **82.4%**. A genuine SLA report must also capture open-ticket responses and account for business hours and any exclusions.
- Priority-level numbers are sensitive to sample size and different target hours; they should be reviewed alongside volume and ticket type.
- Ticket timestamps, reopen history, and actual resolution time are missing. **This data cannot support an average resolution time or backlog-aging claim.**

## SQL behind the results

See [queries.sql](../queries.sql) for the SQLite queries and [run_analysis.py](../run_analysis.py) for a standard-library runner. This page reports values from the published CSV, using equivalent aggregation logic.

## Recommended improvements before a real operational dashboard

1. Capture first response for **every** ticket, including tickets still open.
2. Agree on business-hours calendars, pause rules, and priority definitions.
3. Build measures for aged backlog and resolution SLA only after collecting the necessary timestamps.
4. Review the metrics with service owners and confirm how reopened tickets are counted.
