# Service Desk — Interpretation and Follow-Up

This is a **synthetic IT operations case study**, not the performance report of a real service desk.

## Results and evidence

The sample contains 100 tickets: 26 open and 74 resolved. Of the resolved tickets, 61 meet the illustrative first-response target (82.4%).

See the [results tables](sample-results.md) for the open backlog by team and response metrics by priority. I use a **resolved-only denominator** because the sample does not contain response times for open tickets. Presenting this as an all-ticket SLA would be misleading.

## Questions I'd ask the service owner

- Which clock matters for SLA: elapsed hours or business hours?
- How are pauses, customer dependencies, reopened requests, and duplicate tickets handled?
- Do open tickets have first-response events, even if not yet resolved?
- Is the business worried about first response, time to resolution, repeat incidents, or all three?
- What priority definitions are documented and agreed upon?

## Suggested next data additions

Add actual first-response timestamps for all tickets, created/resolved timestamps, closure reason, assignment changes, and pause intervals. Then validate the rules with IT support leads and build a dashboard with true SLA measures and aging bands.

The current dataset cannot support claims about average resolution time or ticket backlog aging.
