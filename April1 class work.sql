CREATE DATABASE 1APRILclassWork;
CREATE TABLE CollegeAdmision(id int not null unique,name varchar(20) not null unique ,age int not null unique check(age>=20));
INSERT INTO CollegeAdmision VALUES(5, 'sam', 2);

select * from CollegeAdmision;

/*
CHECK:

CREATE TABLE employee_info(id int not null unique,
emp_name varchar(20) not null unique,
emp_dept varchar(20) not null, emp_sal bigint,
emp_age int, check (emp_age > 20));

*/