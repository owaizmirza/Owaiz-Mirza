# 04 — User Stories and Acceptance Criteria

## US-01 — Submit a complete request (Must)
**As a** business requester, **I want** a structured demand form **so that** IT can assess my request without unnecessary follow-up.

**Given** I am on the form, **when** I submit with a missing title or business outcome, **then** the form highlights missing information and no request is created.

**Given** all mandatory fields are present, **when** I submit, **then** a unique request ID and Submitted status are displayed.

## US-02 — Route the demand (Must)
**As an** intake analyst, **I want** to assign an accountable owner and priority **so that** new work has clear responsibility.

**Given** a submitted request, **when** I set a valid owner and priority, **then** the details are saved and visible to authorized users.

**Given** an accepted demand with no owner, **when** I attempt to save, **then** the system prevents the transition.

## US-03 — Track status (Must)
**As a** requester, **I want** to view request status **so that** I understand where my request stands.

**Given** I own the request, **when** I view its detail page, **then** I see the current status, assigned team, and last update.

## US-04 — Detect likely duplicates (Should)
**As an** intake analyst, **I want** a duplicate warning **so that** I can investigate related requests.

**Given** a similar request exists, **when** a new request is triaged, **then** possible matches are shown without automatically merging records.
