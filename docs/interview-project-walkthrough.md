# How I'd Explain These Portfolio Projects in an Interview

These projects are **independent learning exercises using synthetic data**. They are not professional client engagements.

## Retail Sales SQL Analysis

**The situation:** I wanted to practice turning basic sales records into a few management metrics.

**My approach:** I defined completed-order revenue, wrote SQL queries to summarize revenue by month, region, and category, and calculated order-level return rates by channel. I checked the numbers against the CSV and documented what was missing.

**What I'd emphasize:** The biggest challenge wasn't the `GROUP BY`; it was deciding what the measures meant. Counting returned orders and including them in revenue would have changed the answer. I also avoided making claims about profit or customer behavior without the supporting data.

**Next improvement:** Add costs, refunds, product mix, and a longer time series.

## Service Desk KPI Analysis

**The situation:** I wanted to understand how an IT support team could report on ticket backlog and first-response performance.

**My approach:** I defined the denominator carefully, grouped open tickets by team, and compared resolved-ticket response performance by priority.

**What I'd emphasize:** The synthetic data only includes response times for resolved tickets. I would never call that a complete first-response SLA. In a real role I'd clarify business hours, pauses, priority definitions, and how reopened cases affect the measures.

**Next improvement:** Capture events for all tickets and build proper aging and response/resolution SLA logic.

## IT Demand Intake Case Study

**The situation:** I modeled a fictional IT team that receives incomplete requests through scattered channels.

**My approach:** I documented the problem and scope, defined functional and nonfunctional requirements, mapped a proposed process, and linked user stories to UAT cases.

**What I'd emphasize:** Intake quality starts with asking the right questions. Clear fields, ownership, and status definitions make it easier for business and IT teams to work together. The requirements and UAT cases are illustrative and have not been implemented or executed.

## A useful closing line

"These are practice projects, but I tried to treat them like real business problems: define the question, agree on what success means, use evidence where it's available, and be clear about the limitations."
