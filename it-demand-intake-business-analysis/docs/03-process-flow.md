# 03 — Process Flow

## As-is (fictional current state)

~~~mermaid
flowchart TD
  A[Requester emails or messages IT] --> B[Analyst reviews message]
  B --> C{Enough information?}
  C -- No --> D[Ask follow-up questions]
  D --> B
  C -- Yes --> E[Manually enter spreadsheet]
  E --> F[Discuss owner and priority]
  F --> G[Follow up through email]
~~~

## To-be (proposed future state)

~~~mermaid
flowchart TD
  A[Requester submits structured form] --> B{Required fields valid?}
  B -- No --> C[Show validation errors]
  C --> A
  B -- Yes --> D[Create ID and audit event]
  D --> E[Check likely duplicates]
  E --> F[Place in intake queue]
  F --> G[Analyst triages and assigns owner]
  G --> H{Clarification needed?}
  H -- Yes --> I[Request clarification]
  I --> G
  H -- No --> J[Accepted, Rejected, or Deferred]
  J --> K[Update requester and reporting]
~~~

## Proposed status lifecycle
Submitted → Under Review → Needs Clarification / Accepted / Deferred / Rejected / Canceled.

Accepted is an intake decision; it does not imply implementation or delivery.
