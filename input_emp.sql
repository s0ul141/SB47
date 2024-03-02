use emp;
INSERT INTO Department (Dno, DName, MgrSSN, MgrStartDate)
VALUES
    (1, 'Sales', '23EMP009', '2024-01-01'),
    (2, 'Marketing', '23EMP003', '2024-01-01'),
    (3, 'Finance', '23EMP005', '2024-01-01'),
    (4, 'HR', '23EMP007', '2024-01-01'),
    (5, 'IT', '23EMP001', '2024-01-01');
-------------------------------
INSERT INTO Employee (SSN, Name, Address, Gender, MgrSSN, Dno, salary)
VALUES
    ('23EMP001', 'Soumya Basu', 'Kolkata', 'M', NULL, 5, 100000),
    ('23EMP002', 'Nirma Sarkar', 'Kolkata', 'M', ' 23EMP001', 5, 95000),
    ('23EMP003', 'Goutami Das', 'Debogram', 'F', NULL , 3, 100000),
    ('23EMP004', 'Ruchu Das', 'Jaguli', 'F', '23EMP003', 3, 85000),
    ('23EMP005', 'Soumik Ban', 'Volpur', 'M', NULL, 2, 100000),
    ('23EMP006', 'Biju Halder', 'Behrampur', 'F','23EMP005', 2, 80000),
    ('23EMP007', 'Rittik Halder', 'Kolkata', 'M', NULL, 1, 100000),
    ('23EMP008', 'Ankita Shome', 'Shamnagara', 'F','23EMP007', 1, 80000),
    ('23EMP009', 'Junsume Das', 'Jaguli', 'F', NULL, 4, 100000),
    ('23EMP010', 'Avik Ban', 'Purulia', 'M','23EMP009', 4, 89000),
    ('23EMP011', 'Pritul Nan', 'Barasat', 'M', '23EMP001', 5, 85000),
    ('23EMP012', 'Deba Bose', 'Kolkata', 'M','23EMP002', 5, 85000),
    ('23EMP013', 'Samba Ghosh', 'Volpur', 'M', '23EMP003', 3,90000),
    ('23EMP014', 'Ghonta Biswas', 'Barasat', 'M','23EMP007', 4,90000),
    ('23EMP015', 'Ayush Roy Chodu', 'Barasat', 'M', '23EMP014', 4, 80000);
------------------------


INSERT INTO DLocation (Dno, Dloc)
VALUES(1, 'Kolkata'),
    (2, 'New Town'),
    (3, 'New Town'),
    (4, 'Kolkata'),
    (5, 'Sector 5');
------------------

INSERT INTO Project (PNo, PName, PLocation, Dno)
VALUES
    (1, 'New Product', 'New York', 1),
    (2, 'Sale Product', 'Los Angeles', 2),
    (3, 'Development', 'Chicago', 5);
    
    
INSERT INTO Works_on (SSN, PNo, Hours)
VALUES
    ('23EMP001', 3, 40.00),
    ('23EMP002', 3, 30.00),
    ('23EMP012', 3, 20.00);


