use emp;
select * from employee;
select * from project;
select * from department;


#Q1. 
SELECT DISTINCT P.PNo
FROM Project P
JOIN Employee E ON P.Dno = E.Dno
WHERE E.Name = 'Soumya Basu'
UNION
SELECT DISTINCT P.PNo
FROM Project P
JOIN Department D ON P.Dno = D.Dno
WHERE D.MgrSSN = (
    SELECT E.SSN
    FROM Employee E
    WHERE E.Name = 'Soumya Basu'
);
-------------------------------------------------------------------------------------------------------------------------------
#Q2.a
UPDATE Employee E
SET E.salary = E.salary * 1.1
WHERE EXISTS (
    SELECT 1
    FROM Works_on W
    JOIN Project P ON W.PNo = P.PNo
    WHERE P.PName = 'Development'
      AND W.SSN = E.SSN
);
#Q2.b
SELECT E.Name, E.salary AS updated_salary
FROM Employee E
WHERE EXISTS (
    SELECT 1
    FROM Works_on W
    JOIN Project P ON W.PNo = P.PNo
    WHERE P.PName = 'Development'
      AND W.SSN = E.SSN
);

-------------------------------------------------------------------------------------------------------------------------------
#Q3.
SELECT SUM(E.salary) AS total_salary,
       MAX(E.salary) AS max_salary,
       MIN(E.salary) AS min_salary,
       AVG(E.salary) AS avg_salary
FROM Employee E
JOIN Department D ON E.Dno = D.Dno
WHERE D.DName = 'Sales';
-------------------------------------------------------------------------------------------------------------------------------
#Q4.
SELECT E.Name
FROM Employee E
JOIN Department D ON E.Dno = D.Dno
WHERE D.Dno = 2
  AND NOT EXISTS (
    SELECT 1
    FROM Works_on W
    WHERE W.SSN = E.SSN
);
-------------------------------------------------------------------------------------------------------------------------------
#Q5
SELECT D.Dno, COUNT(*) AS employee_count
FROM Employee E
JOIN Department D ON E.Dno = D.Dno
WHERE E.salary > 60000
GROUP BY D.Dno
HAVING COUNT(*) > 3;
#Q6
SELECT E.Name AS Employee_Name, D.DName AS Department_Name
FROM Employee E
JOIN Department D ON E.Dno = D.Dno;
#Q7
SELECT E.Name AS Employee_Name, P.PName AS Project_Name
FROM Employee E
LEFT JOIN Works_on W ON E.SSN = W.SSN
LEFT JOIN Project P ON W.PNo = P.PNo;
#Q8
SELECT E.Name AS Employee_Name, DL.Dloc AS Department_Location
FROM Employee E
JOIN Department D ON E.Dno = D.Dno
JOIN DLocation DL ON D.Dno = DL.Dno;