# 06 — Metrics and Recommendations

## Proposed KPIs (definitions)
- **Submission completeness:** submissions with required fields populated / all submitted requests.
- **Triage turnaround:** business-time elapsed between completed submission and initial triage decision.
- **Ownership coverage:** accepted requests with an accountable owner / all accepted requests.
- **Clarification rate:** requests sent to Needs Clarification / all requests entering intake.
- **Backlog aging:** untriaged open requests grouped by age bands.
- **Duplicate warning precision:** warnings confirmed as actual duplicate / all warnings reviewed.

## Illustrative operational targets
- 95% complete on first submission.
- 90% of complete submissions triaged within two business days.
- 100% of accepted requests have an accountable owner.

Targets are hypothetical; no observed results are presented.

## Suggested rollout
1. Agree on workflow statuses, ownership matrix, and data definitions.
2. Pilot with one fictional business unit and collect UAT feedback.
3. Monitor completeness and triage turnaround.
4. Iterate validation/routing rules and expand gradually.

## Data quality considerations
Track timestamps, working-day calendars, reopens, stalled clarification requests, missing owner values, and status-change history.
