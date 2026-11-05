-- SQL queries for synthetic IT service request dataset.
-- Q1 snapshot status and resolved-record response SLA
SELECT COUNT(*) AS total_requests,
       SUM(CASE WHEN status='Resolved' THEN 1 ELSE 0 END) AS resolved_requests,
       SUM(CASE WHEN status='Open' THEN 1 ELSE 0 END) AS open_requests,
       ROUND(100.0*SUM(CASE WHEN status='Resolved'
                   AND first_response_hours<=response_target_hours THEN 1 ELSE 0 END)
           /NULLIF(SUM(CASE WHEN status='Resolved' THEN 1 ELSE 0 END),0),2) AS resolved_response_sla_pct
FROM requests;

-- Q2 open requests by team
SELECT assigned_team, COUNT(*) AS open_requests
FROM requests WHERE status='Open'
GROUP BY assigned_team ORDER BY open_requests DESC;

-- Q3 resolved first response by priority
SELECT priority, COUNT(*) AS resolved_requests,
       ROUND(AVG(first_response_hours),1) AS avg_first_response_hours,
       ROUND(100.0*SUM(CASE WHEN first_response_hours<=response_target_hours THEN 1 ELSE 0 END)
                 /NULLIF(COUNT(*),0),2) AS response_sla_pct
FROM requests WHERE status='Resolved'
GROUP BY priority ORDER BY CASE priority
    WHEN 'Critical' THEN 1 WHEN 'High' THEN 2 WHEN 'Medium' THEN 3 ELSE 4 END;

-- Q4 most common request categories
SELECT request_category, COUNT(*) AS total_requests
FROM requests GROUP BY request_category ORDER BY total_requests DESC;
