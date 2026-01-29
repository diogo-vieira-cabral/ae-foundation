-- 185. Department Top Three Salaries  

-- BUSINESS CONTEXT: This logic allows management to identify "Top-Tier Clusters" rather than just outliers.  

-- TECHNICAL NOTES: Using DENSE_RANK() over RANK() for Data integrity. If multiple employees share a top salary, they still occupy one "rank". 


WITH HighEarners AS (
SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary,
DENSE_RANK() OVER (
    PARTITION BY e.departmentId
    ORDER BY salary DESC 
    ) AS rnk
FROM 
    Employee AS e
JOIN
    Department AS d ON e.departmentId = d.id 
) 
-- Joining inside the CTE promotes Data Hygiene. It ensures that the ranking logic is applied to a fully-formed business entity (Employee + Dept) rather than a raw ID, avoiding 'bloat' in the final layer.

SELECT
Department, -- defined "universe" at pre calculation (CTE) allows 
Employee,
Salary
FROM
    HighEarners -- Temp table name used for calculation
WHERE
    rnk <= 3; -- change int to change salary cluster

/* BUSINESS RECOMMENDATION: 
If a department shows more than 5 employees in the 'Top 3' rnk by department, it indicates a 'Heavy Top' salary regime. 
Recommend a review of the 'Junior-to-Senior' ratio to ensure long-term budget sustainability and prevent wage compression. 
*/