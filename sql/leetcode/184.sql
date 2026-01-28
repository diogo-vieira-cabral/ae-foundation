-- PROBLEM: 184. Department Highest Salary 

-- BUSINESS CONTEXT: Elite Tier Identification / High-Yield Asset Ranking. 

-- TECHNICAL CHALLENGE: Filtering Window Function outputs via CTE.

```sql
WITH RankedSalary AS (
SELECT
    d.name AS Department,
    e.name AS Employee,
    e.salary AS Salary, -- Forgot a comma
DENSE_RANK() OVER (
    PARTITION BY d.id
    ORDER BY e.salary DESC
    ) AS rnk 
FROM 
    Employee AS e 
JOIN
    Department as d ON e.departmentId = d.id
)

SELECT
Department,
Employee,
Salary
FROM
    RankedSalary
WHERE
    rnk = 1;

-- need a CTE because cannot filter by a window Function in the same SELECT statement that created it. 
The ´where´ tries to filter the data before dense rank has been calculated
```