/*
-- 185. Department Top Three Salaries

-- BUSINESS CONTEXT: This logic allows management to identify "Top-Tier Clusters" rather than just outliers.

-- TECHNICAL NOTES: 
	Using DENSE-RANK over RANK - If multiple employees share a top salary, they still occupy one "rank".
	Joining inside the CTE - ensuring that the ranking logic is applied to a fully-formed business entity (Employee + Dept) rather than a raw ID, avoiding 'bloat' in the final layer.
*/

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

SELECT
Department, 
Employee,
Salary
FROM
    HighEarners
WHERE
    rnk <= 3; -- change int to change salary cluster

/* BUSINESS RECOMMENDATION: 
Departments where the 'Top 3' salaries are identical suggest a highly commoditized role structure.
Recommend performance-based bonus restructuring to incentivize individual 'Alpha' contributions.
*/