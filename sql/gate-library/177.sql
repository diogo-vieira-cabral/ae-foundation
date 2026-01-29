/*
PROBLEM: Nth Highest Salary

BUSINESS CONTEXT: 
Enables dynamic segmentation of high-margin customers.
By passing a variable 'N', the marketing team can instantly identify 
spending thresholds for different loyalty tiers (VIP, VVIP, Elite).

TECHNICAL CHALLENGE: 
1. Handling Zero-based Indexing: SQL 'OFFSET' treats the first row as 0. 
We must decrement N by 1 to align with human-readable rankings.
2. Reusability: Using a UDF (User Defined Function) allows this logic to scale across multiple business reports.
3. Data Quality: Using 'DISTINCT' ensures we ignore duplicate salaries and find the true Nth unique value.
*/


CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
-- We set N inside the function to handle the offset logic
-- SQL offsets start at 0, not 1. If we want the 2nd highest salary, we need to "skip" 1, hence (N-1). 
SET N = N - 1;
  
RETURN (
  -- Logic to sort and pick the single Nth row
  SELECT DISTINCT salary 
  FROM Employee 
  ORDER BY salary DESC
  LIMIT 1 OFFSET N
  );
END