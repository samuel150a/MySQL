CREATE DATABASE task11;
CREATE TABLE college_info(college_id INT PRIMARY KEY,
college_name varchar(100),
location varchar(100),
established_year INT CHECK(established_year>=1900),
college_type Varchar(20) CHECK(college_type IN ('Public','Private')));

ALTER TABLE college_info 
DROP CHECK college_info_chk_1;






CREATE TABLE student_info(Student_id INT PRIMARY KEY, 
Student_name VARCHAR(100),
age INT CHECK(age<=17 AND age<=30),
department VARCHAR(50),
College_id INT,FOREIGN KEY(college_id) REFERENCES college_info(college_id));

ALTER TABLE student_info MODIFY COLUMN age INT CHECK(age>=17 AND age<=30);

INSERT INTO college_info VALUES 
(1, 'ABC Engineering College', 'Bangalore', 1995, 'Private'),
(2, 'XYZ Institute of Tech', 'Mumbai', 1980, 'Public'),
(3, 'National College', 'Delhi', 1970, 'Public'),
(4, 'Bright Future University', 'Chennai', 2001, 'Private'),
(5, 'Sunrise Institute', 'Pune', 1992, 'Private'),
(6, 'Dreams Tech University', 'Hyderabad', 2000, 'Public'),
(7, 'Innovation College', 'Ahmedabad', 1985, 'Private'),
(8, 'Galaxy University', 'Kolkata', 1999, 'Private'),
(9, 'Oceanic College of Science', 'Goa', 2005, 'Public'),
(10, 'Unity College', 'Bhopal', 1998, 'Public'),
(11, 'Green Leaf Tech', 'Nagpur', 2003, 'Private'),
(12, 'Future Minds Institute', 'Lucknow', 2008, 'Public'),
(13, 'Elite Engineering College', 'Jaipur', 1990, 'Private'),
(14, 'Skyline Tech', 'Patna', 1996, 'Private'),
(15, 'Metro Science University', 'Delhi', 1988, 'Public');


ALTER TABLE student_info 
DROP CHECK student_info_chk_1;

ALTER TABLE student_info 
ADD CONSTRAINT student_info_chk_1 CHECK (age >= 17 AND age <= 30);

INSERT INTO student_info VALUES 
(101, 'Aarav Mehta', 20, 'Computer Science', 1),
(102, 'Riya Sharma', 19, 'Electronics', 2),
(103, 'Karan Singh', 21, 'Mechanical', 3),
(104, 'Sneha Patil', 22, 'Civil', 4),
(105, 'Mohit Verma', 20, 'Electrical', 5),
(106, 'Ananya Rao', 23, 'IT', 6),
(107, 'Aditya Das', 18, 'Computer Science', 7),
(108, 'Meera Iyer', 19, 'Electronics', 8),
(109, 'Yash Agarwal', 21, 'Mechanical', 9),
(110, 'Divya Nair', 20, 'Civil', 10),
(111, 'Rohan Sen', 22, 'Electrical', 11),
(112, 'Priya Gupta', 20, 'IT', 12),
(113, 'Nikhil Jain', 19, 'Computer Science', 13),
(114, 'Isha Khan', 21, 'Electronics', 14),
(115, 'Vikram Joshi', 22, 'Mechanical', 15);


/* Add one Column*/

ALTER TABLE College_info ADD COLUMN Watchman_name Varchar(30);
UPDATE College_info SET Watchman_name="luke" WHERE College_id=6;
UPDATE College_info SET Watchman_name="mark" WHERE College_id=7;
UPDATE College_info SET Watchman_name="jona" WHERE College_id=8;
UPDATE College_info SET Watchman_name="joel" WHERE College_id=9;
UPDATE College_info SET Watchman_name="sonu" WHERE College_id=10;

UPDATE College_info SET Watchman_name="ganu" WHERE College_id=11;
UPDATE College_info SET Watchman_name="pavan" WHERE College_id=12;
UPDATE College_info SET Watchman_name="kavan" WHERE College_id=13;
UPDATE College_info SET Watchman_name="punith" WHERE College_id=14;
UPDATE College_info SET Watchman_name="dawan" WHERE College_id=15;









/* Renaming 3 Columns*/

ALTER TABLE College_info RENAME COLUMN college_name to college_names;
ALTER TABLE College_info RENAME COLUMN location to Area;
ALTER TABLE College_info RENAME COLUMN Established_year to YearOfOrigination;

/*Alter 3 DataType */

ALTER TABLE College_info MODIFY Column college_names varchar(100);
ALTER TABLE College_info MODIFY Column YearOfOrigination BIGINT;
ALTER TABLE College_info MODIFY Column Area Varchar(100);



/*Update Query For New Column For All rows*/

UPDATE College_info SET Watchman_name="Hirak" WHERE College_id=1;
UPDATE College_info SET Watchman_name="Santrick" WHERE College_id=2;
UPDATE College_info SET Watchman_name="Patrick" WHERE College_id=3;
UPDATE College_info SET Watchman_name="Santosh" WHERE College_id=4;
UPDATE College_info SET Watchman_name="Tharish" WHERE College_id=5;

/* 4 Delete Query */

DELETE FROM College_info where College_id=1;
DELETE FROM College_info where College_id=2;
DELETE FROM College_info where College_id=3;
DELETE FROM College_info where College_id=4;


/* Fetch the data Using AND OR IN NOT IN ,BETWEEN,NOT BETWEEN,AGGREGATE,JOINS */
SELECT * From Student_info s INNER JOIN College_info c ON s.college_id =c.college_id;
SELECT * From Student_info s LEFT JOIN College_info c ON s.college_id =c.college_id;
SELECT * From Student_info s RIGHT JOIN College_info c ON s.college_id =c.college_id;


SELECT * FROM College_info Where College_id=2 AND College_type='private';
SELECT * FROM College_info Where College_id=3 OR College_type='public';
SELECT * FROM College_info Where College_id IN (1,2,3,4,5);
SELECT * FROM College_info Where College_id NOT IN (6,7,8,9,10);

SELECT * FROM College_info Where College_id BETWEEN 6 AND 8;
SELECT * FROM College_info Where College_id NOT BETWEEN 6 AND 8;


SELECT COUNT(YearOfOrigination)as totalall FROM College_info;
SELECT MAX(YearOfOrigination)as NewAdmision FROM College_info;
SELECT MIN(YearOfOrigination)as OldAdmision FROM College_info;

SELECT COUNT(Area) AS areas, YearOfOrigination FROM College_info GROUP BY YearOfOrigination;
SELECT MAX(YearOfOrigination) AS NewAddmission, area FROM College_info GROUP BY area having area='chennai';


/* ==================================================================================================================================*/
/* TABLE 2 */
/* Add one Column*/

ALTER TABLE Student_info ADD COLUMN Student_adhar int;
UPDATE Student_info SET Student_adhar=766757575 WHERE College_id=6;
UPDATE Student_info SET Student_adhar=75486890 WHERE College_id=7;
UPDATE Student_info SET Student_adhar=55775999 WHERE College_id=8;
UPDATE Student_info SET Student_adhar=758858399 WHERE College_id=9;
UPDATE Student_info SET Student_adhar=354890675 WHERE College_id=10;



UPDATE Student_info SET Student_adhar=736757575 WHERE College_id=11;
UPDATE Student_info SET Student_adhar=75896890 WHERE College_id=12;
UPDATE Student_info SET Student_adhar=55075999 WHERE College_id=13;
UPDATE Student_info SET Student_adhar=756858399 WHERE College_id=14;
UPDATE Student_info SET Student_adhar=355890675 WHERE College_id=15;


















/* Renaming 3 Columns*/

ALTER TABLE Student_info RENAME COLUMN department to departments;


ALTER TABLE Student_info DROP CHECK student_info_chk_1;


ALTER TABLE Student_info RENAME COLUMN age to ages;
ALTER TABLE Student_info ADD CONSTRAINT student_info_chk_1 CHECK (ages >= 0);

ALTER TABLE Student_info RENAME COLUMN Student_name to name;


/*Alter 3 DataType */

ALTER TABLE Student_info MODIFY Column Student_id int;
ALTER TABLE Student_info MODIFY Column ages BIGINT;
ALTER TABLE Student_info MODIFY Column departments Varchar(100);

/*Update Query For New Column For All rows*/

UPDATE Student_info SET Student_adhar=76757575 WHERE College_id=1;
UPDATE Student_info SET Student_adhar=7586890 WHERE College_id=2;
UPDATE Student_info SET Student_adhar=5575999 WHERE College_id=3;
UPDATE Student_info SET Student_adhar=75858399 WHERE College_id=4;
UPDATE Student_info SET Student_adhar=35890675 WHERE College_id=5;


/* 4 Delete Query */

DELETE FROM Student_info where College_id=1;
DELETE FROM Student_info where College_id=2;
DELETE FROM Student_info where College_id=3;
DELETE FROM Student_info where College_id=4;

/* Fetch the data Using AND OR IN NOT IN ,BETWEEN,NOT BETWEEN,AGGREGATE,JOINS */
SELECT * From College_info c INNER JOIN Student_info s ON s.college_id =c.college_id;
SELECT * From College_info c LEFT JOIN Student_info s ON s.college_id =c.college_id;
SELECT * From College_info c RIGHT JOIN Student_info s ON s.college_id =c.college_id;


SELECT * FROM Student_info Where Student_id=101 AND College_id=1;
SELECT * FROM Student_info Where Student_id=110 OR College_id=4;
SELECT * FROM Student_info Where Student_id IN (111,112,113,114,115);
SELECT * FROM Student_info Where Student_id NOT IN (116,117,118,119,110);

SELECT * FROM Student_info Where Student_id BETWEEN 106 AND 108;
SELECT * FROM Student_info Where Student_id NOT BETWEEN 106 AND 108;


SELECT COUNT(name)as totalall FROM Student_info;
SELECT MAX(ages)as senior FROM Student_info;
SELECT MIN(ages)as junior FROM Student_info;

SELECT COUNT(departments) AS dept, ages FROM Student_info GROUP BY ages;
SELECT MAX(ages) AS age, departments FROM Student_info GROUP BY departments having departments='computer science';







