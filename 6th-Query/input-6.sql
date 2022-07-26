-- Total number of employees who have not completed minimum hours (8:30 hours). (Assuming an employee swipes exactly two times a day)

SELECT COUNT(DISTINCT S1.ID) AS No_of_employees_not_completing_hours           
FROM Swipes S1
JOIN Swipes S2
	ON S1.ID = S2.ID 
    AND S1.Swipe_Date = S2.Swipe_Date 
    AND S2.swipe_time > S1.Swipe_time 
    AND TIMEDIFF(S2.swipe_time,S1.swipe_time) <= '08:30:00';