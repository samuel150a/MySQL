CREATE DATABASE classWork;
CREATE TABLE CollegeAdmision(id int not null unique,name varchar(20) not null unique ,age int not null unique check(age>=20));
INSERT INTO CollegeAdmision VALUES(5, 'sam', 2);

select * from CollegeAdmision;

