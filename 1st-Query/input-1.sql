-- 1. Print name of employees that worked at least 2 days from office.(Assuming an employee swipes exactly two times a day)

SELECT E.Name
FROM Employee E
JOIN Swipes S
	ON E.ID = S.ID    
GROUP BY S.ID
HAVING COUNT(S.ID) > 3;

-- 2. Print name of employees that worked at least 2 days from office.(Without the above assumption)

SELECT E.Name
FROM Employee E
JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.Name
HAVING COUNT(DISTINCT S.Swipe_Date) > 1;