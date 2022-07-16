CREATE DATABASE IF NOT EXISTS office;

USE office;

-- Creating Employee table

CREATE TABLE Employee(
	ID INT NOT NULL,
    Name VARCHAR (255),
    Location VARCHAR (255),
    PRIMARY KEY (ID)
);

-- Inserting values into employee table

INSERT INTO Employee
VALUES(1,'Hrithik', 'Gurgaon');

INSERT INTO Employee
VALUES
	(2,'Sidharth', 'Noida'),
	(3,'Pawan', 'Delhi');
    
INSERT INTO Employee VALUES
	(4,'Tom', 'Noida'),
    (5,'John', 'Delhi'),
    (6,'Hank', 'Gurgaon'),
    (7, 'Tim', 'Gurgaon');
    
INSERT INTO Employee VALUES
	(8,'Tina', 'Noida'),
    (9,'Jack', 'Delhi'),
    (10,'Hardik', 'Gurgaon'),
    (11, 'Ken', 'Gurgaon'),
    (12, 'Kevin', 'Noida');

-- Creating Swipes table    

CREATE TABLE Swipes(
	ID INT NOT NULL,
    Swipe_Date DATE,
    Swipe_time TIME
);

-- Inserting values into Swipes table

INSERT INTO Swipes VALUES
	(1, '2022-06-20', '08:50:45'),
    (2, '2022-06-20', '08:30:45'),
    (4, '2022-06-20', '09:43:45'),
    (3, '2022-06-20', '08:55:45'),
    (7, '2022-06-20', '10:50:45'),
    (6, '2022-06-20', '09:20:45'),
    (5, '2022-06-20', '07:50:45'),
    (5, '2022-06-20', '17:50:45'),
    (3, '2022-06-20', '16:50:45'),
    (2, '2022-06-20', '18:50:45'),
    (6, '2022-06-20', '17:50:45'),
    (7, '2022-06-20', '19:50:45'),
    (1, '2022-06-20', '17:50:45'),
    (4, '2022-06-20', '19:50:45'),
	(2, '2022-06-21', '08:55:45'),
    (4, '2022-06-21', '09:50:45'),
    (6, '2022-06-21', '07:52:45'),
    (1, '2022-06-21', '10:34:45'),
    (3, '2022-06-21', '11:11:45'),
    (5, '2022-06-21', '07:52:45'),
    (7, '2022-06-21', '08:20:45'),
    (2, '2022-06-21', '18:50:45'),
    (3, '2022-06-21', '17:50:45'),
    (4, '2022-06-21', '16:50:45'),
    (7, '2022-06-21', '19:50:45'),
    (5, '2022-06-21', '17:50:45'),
    (1, '2022-06-21', '20:50:45'),
    (6, '2022-06-21', '15:50:45');

INSERT INTO Swipes VALUES
    (8, '2022-06-22', '08:50:45'),
    (10, '2022-06-22', '08:30:45'),
    (4, '2022-06-22', '09:43:45'),
    (11, '2022-06-22', '08:55:45'),
    (7, '2022-06-22', '10:50:45'),
    (2, '2022-06-22', '09:20:45'),
    (5, '2022-06-22', '07:50:45'),
    (10, '2022-06-22', '18:50:45'),
    (11, '2022-06-22', '17:50:45'),
    (4, '2022-06-22', '16:50:45'),
    (8, '2022-06-22', '19:50:45'),
    (5, '2022-06-22', '17:50:45'),
    (2, '2022-06-22', '20:50:45'),
    (7, '2022-06-22', '15:50:45');
    


-- Print name of employees that worked at least 2 days from office.

SELECT E.Name
FROM Employee E
JOIN Swipes S
	ON E.ID = S.ID    
GROUP BY S.ID
HAVING COUNT(S.ID) > 3;

-- Print Name and number of days present in office for a employee

SELECT E.Name, COUNT(S.ID)/2 AS "Days Present in Office"
FROM Employee E
LEFT JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.ID;

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

-- Print Location where most employees ae working from home

SELECT E.Location
FROM Employee E 
JOIN Swipes S 
	ON E.ID = S.ID
GROUP BY E.Location
ORDER BY COUNT(S.ID) ASC
LIMIT 1;

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

-- Total number of employees who have not completed minimum hours (8:30 hours)

SELECT COUNT(DISTINCT S1.ID) AS No_of_employees_not_completing_hours           
FROM Swipes S1
JOIN Swipes S2
	ON S1.ID = S2.ID 
    AND S1.Swipe_Date = S2.Swipe_Date 
    AND S1.Swipe_time != S2.Swipe_time 
    AND S2.swipe_time > S1.Swipe_time 
    AND TIMEDIFF(S2.swipe_time,S1.swipe_time) <= '08:30:00';

-- Total number of employees who have not completed minimum hours (including wfh employees)

SELECT COUNT(DISTINCT S1.ID) + 
	(SELECT COUNT(E.name)
	FROM Employee E 
	LEFT JOIN Swipes S 
		ON E.ID = S.ID
	WHERE S.ID IS NULL) AS No_of_employees_not_completing_hours           
FROM Swipes S1
JOIN Swipes S2
	ON S1.ID = S2.ID 
    AND S1.Swipe_Date = S2.Swipe_Date 
    AND S1.Swipe_time != S2.Swipe_time 
    AND S2.swipe_time > S1.Swipe_time 
    AND TIMEDIFF(S2.swipe_time,S1.swipe_time) <= '08:30:00';

