CREATE DATABASE 28MARCH;
/* Constraints:
1) Not Null:

CREATE TABLE movies_info(id int not null, movie_name
varchar(20) not null, movie_language varchar(20),
budget bigint, rating decimal(3,1));

select * from movies_info;
desc movies_info;


insert into movies_info values
(1,'max','Kannada', 2500000, 8.0),
(2,'KGF','Kannada',8000000, 8.5),
(3,'Kantara', 'kannada', 3000000, 8.6),
(4,'Leo','Tamil', 200000, 7.5),
(5,'avesham', 'Malayalam', 4000000, 8.7);

2) Unique: 

CREATE TABLE pkl_info(id int not null unique, 
team_name varchar(20) unique, captain_name varchar(15)
not null);

select * from pkl_info;

insert into pkl_info values(1, 'BengaluruBulls','pardeep');
insert into pkl_info values(2, null,'Rahul');
insert into pkl_info values(3, 'TT','pawan');

update pkl_info set team_name = 'DD' where id = 2;

alter table pkl_info modify column team_name varchar(30)
not null; */