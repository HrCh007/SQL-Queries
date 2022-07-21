-- Print name of employees that worked at least 2 days from office.

SELECT E.Name
FROM Employee E
JOIN Swipes S
	ON E.ID = S.ID    
GROUP BY S.ID
HAVING COUNT(S.ID) > 3;