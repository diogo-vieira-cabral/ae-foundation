/*
PROBLEM: 178. Rank Scores 

BUSINESS CONTEXT: Identifying leaderboard positions for a scoring system. Ensure fairness by acknowledging tied performance without penalizing the subsequent participants. 

TECHNICAL CHALLENGE: Distinguish between RANK() and DENSE_RANK(). Since the business requirement specifies no gaps in numbering, DENSE_RANK() is the correct mathematical choice. 
This remains O(n) because it requires only one pass through the ordered dataset. 
*/

SELECT 
    score, 
    DENSE_RANK() OVER (ORDER BY score DESC) AS 'rank'
FROM scores
ORDER By score DESC;