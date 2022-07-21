-- Print Name of employees working from home

SELECT E.name
FROM Employee E
LEFT JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.ID
HAVING COUNT(S.ID) = 0;

-- Alternate for above query

SELECT E.name
FROM Employee E 
LEFT JOIN Swipes S 
	ON E.ID = S.ID
WHERE S.ID IS NULL;