use emp;
CREATE TABLE Department (
    Dno Int(2) PRIMARY KEY,
    DName VARCHAR(10),
    MgrSSN VARCHAR(10),
    MgrStartDate DATE
);


CREATE TABLE Employee (
    SSN VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(20),
    Address VARCHAR(20),
    Gender CHAR(1),
    MgrSSN VARCHAR(10),
    Dno Int(2),
    CONSTRAINT fk_department FOREIGN KEY (Dno) REFERENCES Department(Dno)
);

CREATE TABLE DLocation (
    Dno int(2),
    Dloc VARCHAR(10),
    CONSTRAINT fk_department_unique FOREIGN KEY (Dno) REFERENCES Department(Dno)
);

CREATE TABLE Project (
    PNo int(10) PRIMARY KEY,
    PName VARCHAR(20),
    PLocation VARCHAR(20),
    Dno int(2),
    CONSTRAINT fk_department_project FOREIGN KEY (Dno) REFERENCES Department(Dno)
);
CREATE TABLE Works_on (
    SSN VARCHAR(10),
    PNo INT(10),
    Hours DECIMAL(5,2),
    CONSTRAINT fk_employee FOREIGN KEY (SSN) REFERENCES Employee(SSN),
    CONSTRAINT fk_project FOREIGN KEY (PNo) REFERENCES Project(PNo)
);
