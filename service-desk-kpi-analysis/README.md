# Service Desk KPI Analysis — SQL Portfolio Case Study

**Independent educational simulation** | **Data:** 100 synthetic IT requests | **Stack:** Python 3, SQLite, SQL, CSV.

## Business questions
- What is the open backlog?
- Which team has the largest open queue?
- What proportion of resolved records met their first-response target?
- How does response performance vary by priority?

## Run
~~~bash
python run_analysis.py
~~~
No third-party libraries required.

## Definitions
- status = Open / Resolved, at a simulated reporting snapshot.
- priority = Critical / High / Medium / Low.
- first_response_hours is recorded **for resolved requests only**; blank for Open.
- response_target_hours: illustrative target in elapsed hours (8 / 24 / 72 / 120).
- **Resolved-case first-response SLA rate** = resolved records responding within the target / all resolved records.

This is NOT an all-submissions response SLA or a resolution SLA. Real reporting requires business-hour calendars, pauses, response timestamps for open cases, and changes over time.

Files: [data](data/requests.csv) | [SQL queries](queries.sql) | [Python runner](run_analysis.py) | [Analysis notes](docs/findings.md).
