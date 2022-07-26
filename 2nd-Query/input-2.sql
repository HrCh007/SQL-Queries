-- 1. Print Name and number of days present in office for a employee.(Assuming an employee swipes exactly two times a day)

SELECT E.Name, COUNT(S.ID)/2 AS "Days Present in Office"
FROM Employee E
LEFT JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.ID;

-- 2. Print Name and number of days present in office for a employee.(Without the above assumption)

SELECT E.Name, COUNT(DISTINCT S.Swipe_Date) AS "Days Present in Office"
FROM Employee E
LEFT JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.Name;
