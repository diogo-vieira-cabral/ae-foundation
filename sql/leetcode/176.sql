-- LeetCode 176: Second Highest Salary 

/* Debug progression:
❌ v1: OFFSET skips ROWS not values  
❌ v2: DISTINCT MAX → highest salary
✅ v3: Subquery < MAX(salary)
*/

SELECT MAX(salary) AS SecondHighestSalary
FROM Employee 
WHERE salary < (SELECT MAX(salary) FROM Employee);

