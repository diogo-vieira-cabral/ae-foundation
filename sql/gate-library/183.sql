-- PROBLEM: 183. Customers Who Never Order

-- BUSINESS CONTEXT: Identifying unreached segments/market voids.


SELECT 
    c.name AS Customers
FROM 
    Customers AS c
LEFT JOIN 
    Orders AS o 
ON 
    c.id = o.customerId
WHERE 
    o.id IS NULL;
