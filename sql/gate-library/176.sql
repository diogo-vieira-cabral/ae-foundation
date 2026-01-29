/* 
PROBLEM 176: Second Highest Salary

BUSINESS CONTEXT: 
Identifying the secondary compensation tier. 
This allows HR to understand the gap between the top earner and the next 
level of pay for budgeting and retention analysis.

TECHNICAL CHALLENGE: 
We avoid the double-scan overhead of subqueries to achieve O(n) performance. 
The logic scales by allowing us to change a single integer to find the 3rd, 4th, 
or Nth rank. We ensure data quality by using DENSE_RANK() so that 
duplicate top salaries don't cause the query to skip the 2nd rank.
*/

WITH rankedsalaries AS (
    SELECT 
        salary, 
        DENSE_RANK() OVER (ORDER BY salary DESC) as rank
    FROM Employee
)
SELECT salary AS SecondHighestSalary
FROM rankedsalaries
WHERE rank = 2
LIMIT 1; -- Ensures a single result if the table has no duplicate 2nd place values