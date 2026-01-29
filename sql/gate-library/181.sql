-- PROBLEM: 181 - Employees Earning More Than Their Managers

-- BUSINESS CONTEXT: Identifying "status-to-pay" outliers. 

-- TECHNICAL CHALLENGE: Explicitly qualifying columns in a self-join.

SELECT
    e.name AS Employee -- Specify 'e' to avoid ambiguity
FROM 
    Employee AS e
JOIN
    Employee AS m
ON
    e.managerId = m.id
WHERE 
    e.salary > m.salary;