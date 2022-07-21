-- Print Name and number of days present in office for a employee

SELECT E.Name, COUNT(S.ID)/2 AS "Days Present in Office"
FROM Employee E
LEFT JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.ID;