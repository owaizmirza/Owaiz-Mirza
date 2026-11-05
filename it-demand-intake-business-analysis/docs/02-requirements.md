# 02 — Requirements

## Functional requirements
| ID | Requirement | Priority | Suggested verification |
|---|---|---|---|
| FR-01 | Requester must enter title, description, business unit, contact, category, and desired outcome. | Must | Missing-field UAT |
| FR-02 | On submission, system generates a unique request ID and timestamp. | Must | ID creation UAT |
| FR-03 | Intake analyst can classify priority, route to an owner, and record the rationale. | Must | Routing UAT |
| FR-04 | Requester can see status and last updated date. | Must | Status visibility UAT |
| FR-05 | Status changes record actor, timestamp, and previous/current state. | Must | Audit UAT |
| FR-06 | System warns about likely duplicates without auto-merging them. | Should | Duplicate warning UAT |
| FR-07 | Analyst can export/report volume by category, owner, and status. | Should | Reporting UAT |

## Non-functional requirements
| ID | Requirement | Example acceptance criterion |
|---|---|---|
| NFR-01 | Accessibility | Key submission and tracking flows are keyboard accessible. |
| NFR-02 | Security | Requesters cannot edit another requester's restricted details. |
| NFR-03 | Reliability | Failed submissions display an error and never silently create duplicate IDs. |
| NFR-04 | Auditability | Status event history remains available for authorized review. |

## Business rules
- New requests enter Submitted status.
- Only authorized intake roles can set owner and priority.
- Request cannot move to Accepted without a named owner.
- Clarification requests retain a visible status and reason.
- Canceled and Rejected requests retain their event history.

These are proposed illustrative requirements, subject to stakeholder validation in a real project.
