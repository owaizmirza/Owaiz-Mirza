# Service Desk — Analysis Notes

## KPI interpretation
- Open backlog is a snapshot count; it is not a measure of average resolution time.
- The calculated SLA rate uses **resolved records only**, because open records have no first response value.
- Priority-level comparison requires awareness of different target hours and sample sizes.
- The biggest team queue may simply reflect a higher intake volume, not worse performance.

## Recommendations for a production dashboard
1. Capture created, first-response, resolved, and reopened timestamps for every ticket.
2. Calculate response and resolution SLA separately, using a business-hours calendar.
3. Display queue aging by priority, team, and support group.
4. Track reopened tickets and data-quality exceptions.
5. Filter by month, service type, and requester segment.

These are suggested analytical practices, not measured performance at a real organization.
