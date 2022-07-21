-- Print name of employees who have not completed minimum hours (8:30 hours) 

SELECT E.name, S2.Swipe_Date, TIMEDIFF(S2.swipe_time,S1.swipe_time) as Total_hours
FROM Swipes S1
JOIN Swipes S2
	ON S1.ID = S2.ID 
    AND S1.Swipe_Date = S2.Swipe_Date 
    AND S1.Swipe_time != S2.Swipe_time 
    AND S2.swipe_time > S1.Swipe_time 
    AND TIMEDIFF(S2.swipe_time,S1.swipe_time) <= '08:30:00'
JOIN Employee E 
	ON S1.ID = E.ID 
    AND S2.ID = E.ID;