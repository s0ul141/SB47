INSERT INTO STUDENT.STUDENT (USN, SNAME, ADDRESS, PHONE, GENDER) 
VALUES 
('23MDT0037', 'Rittik', 'VELLORE', 8336051001, 'M'),
('23MDT0057', 'June', 'VELLORE', 8336051002, 'F'),
('23MDT0077', 'Goutami', 'VELLORE', 8336051003, 'F'),
('23MDT0087', 'Soumik', 'VELLORE', 8336051004, 'M'),
('23MDT0097', 'Solmon', 'VELLORE', 8336051005, 'M'),
('23MDT0107', 'Svik', 'VELLORE', 8336051006, 'M'),
('23MDT0117', 'Shiva', 'VELLORE', 8336051007, 'M'),
('23MDT0127', 'Pratim', 'VELLORE', 8336051008, 'M'),
('23MDT0137', 'Kaushal', 'VELLORE', 8336051009, 'M');
INSERT INTO STUDENT VALUES('23MDT0047', 'SOUMYA BASU', 'VELLORE', 8336051483,'M');

ALTER TABLE STUDENT MODIFY COLUMN PHONE VARCHAR(10);

UPDATE STUDENT 
SET usn='23MDT0048'
where usn='23MDT0077';

SELECT * FROM student.student;

DESC student.student;

