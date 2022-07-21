-- Print Location where most employees ae working from home

SELECT E.Location
FROM Employee E 
JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.Location
ORDER BY COUNT(S.ID) ASC
LIMIT 1;