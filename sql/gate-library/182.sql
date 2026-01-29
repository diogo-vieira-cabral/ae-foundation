-- PROBLEM: 182 - Duplicate Emails

-- BUSINESS CONTEXT: identifying redundant Personally Identifiable Information (PII)

-- TECHNICAL CHALLENGE: Filtering post-aggregation data to isolate repeating clusters.

SELECT
    p.email AS Email
FROM 
    Person AS p
WHERE 
    email IS NOT NULL
GROUP BY 
    p.email
HAVING
    COUNT(p.email) > 1;