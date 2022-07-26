-- Print Location where most employees are working from home.

/*
Earlier wrong query

SELECT E.Location
FROM Employee E 
JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.Location
ORDER BY COUNT(S.ID) ASC
LIMIT 1;  */

SELECT E.Location                   
FROM Employee E 
LEFT JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.Location
ORDER BY COUNT(DISTINCT E.Name)*3 - COUNT(DISTINCT S.ID, S.Swipe_Date) DESC    
LIMIT 1;

--  COUNT(DISTINCT E.Name)*3 - COUNT(DISTINCT S.ID, S.Swipe_Date) AS Number_of_WFH_Days_in_a_location
-- This query prints the location where maximum WFH have been taken in a period of 3 days.
