-- LeetCode 175: Combine Two Tables 

SELECT 
firstName,
lastName,
city,
state
FROM person
LEFT JOIN Address ON Person.personId = Address.personId;