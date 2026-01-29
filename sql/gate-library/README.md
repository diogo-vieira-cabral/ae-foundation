## Logic Gate Foundry: Enterprise SQL Standards

I don’t treat these challenges as isolated exercises. In this directory, every solution is a Logic Gate—a standardized, reusable piece of architecture built to support high-stakes strategic infrastructure.

These gates are where technical competence meets economic reality. In the Foundry, we don't just move data; we engineer the intelligence layers required to identify alpha, mitigate risk, and dictate business direction. If a query doesn't translate into a decisive market advantage, it doesn't leave the shop.

### LeetCode Database Challenges
**Progress: 9/50** | **LeetCode:** https://leetcode.com/u/diogo-vieira-cabral/  


| # | Problem | Use case/Business Impact | TechStack |
|---|---------|---------------|----------|
| [175](175.sql) | Combine Two Tables | Merge disparate PII sources to unify customer profiles. | LEFT JOIN |
| [176](176.sql) | Second Highest Salary | **Comparative Benchmarking**: Understand the gap between the top earner and the next level of pay for budgeting and retention analysis. | CTE, DENSE RANK() LIMIT |
| [177](177.sql) | Nth Highest Salary | **Tiered Segmentation**: Build reusable logic to create dynamic customer tiers. | UDF, OFFSET|
| [178](178.sql) | Rank Scores | Ensuring fairness: Acknowledging tied performance without penalizing the subsequent participants.  | DENSE_RANK()
| [181](181.sql) | Employees Earning More Than Managers | **Performance Arbitrage**: Identifying high-performers out-earning leadership. | SELF-JOIN |
| [182](182.sql) | Duplicate Emails | **Data Hygiene**: Isolating redundant entities to ensure unique ID resolution. | GROUP BY, HAVING |
| [183](183.sql) |	Customers Who Never Order | **Market Gap Analysis**: Isolating "Virgin Assets" or unreached segments by identifying record voids. |	LEFT JOIN, IS NULL|
| [184](184.sql) |	Department Highest Salary |	**Elite Tier Identification**: Ranking the "Top 1%" of assets within specific categories/. | CTE, DENSE_RANK(), OVER(PARTITION BY) |
| [185](185.sql) | Department Top Three Salaries | **High-Density Talent Benchmarking:** Identifying competitive salary regimes within departments to prevent talent poaching and optimize retention. | CTE, DENSE_RANK() |
| [196](196.sql) | Duplicate Emails | CRM Deduplication: Target and remove redundant records while preserving Master Profiles using a Self-Join comparison logic. | DELETE, SELF JOIN |
