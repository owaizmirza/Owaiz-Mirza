# Retail Sales — Interpretation and Follow-Up

This is a **synthetic SQL case study**, not a report about a real retailer.

## Results and evidence

Read the [results tables](sample-results.md) first. The dataset has 240 orders; 214 completed orders account for $52,205.45 in simplified revenue. 26 returned orders produce a 10.8% return rate.

The **Equipment** category is the leading revenue contributor in this sample. I would not treat that as a recommendation to invest more in the category until I had costs, profitability, customer mix, and returns by category.

The **Online** channel has the highest observed return rate (14.7%), but that figure covers only 116 orders. Before proposing changes, I would compare products sold in each channel and check whether the difference persists over time.

## Business questions to ask next

- Are returns measured against orders, individual units, or shipped items?
- Are we reporting net or gross revenue, and when do refunds post?
- Is our objective revenue growth, margin, conversion, or customer retention?
- How do category and discount mix differ across channels and regions?

## What I learned designing this analysis

Defining metrics carefully is as important as writing the SQL. A good result should be reproducible, have a clear denominator, and state what the dataset **cannot** tell us. Synthetic records can demonstrate the process but not establish real-world trends.
