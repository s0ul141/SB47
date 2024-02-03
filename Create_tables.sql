#Student--------------------------------

CREATE TABLE student.STUDENT(
  USN VARCHAR(10) PRIMARY KEY,
  SNAME VARCHAR(25),
  ADDRESS VARCHAR(25),
  PHONE INT(10),
  GENDER CHAR(1)
);
desc student.STUDENT;


#SEMSEC----------------------------------

CREATE TABLE student.SEMSEC(
SSID VARCHAR(5) PRIMARY KEY,
SEM INT(2),
SEC CHAR(1));
desc student.SEMSEC;


#Subject ---------------------------------

CREATE TABLE student.SUBJECT (
SUBCODE VARCHAR(8) ,
TITLE VARCHAR(20) NOT NULL,
SEM INT(2),
CREDITS INT(2),
PRIMARY KEY (SUBCODE));
desc student.SUBJECT;
