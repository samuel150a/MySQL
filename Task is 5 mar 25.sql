/* Assignment:
1) CREATE 2 TABLES WITH 10 columns(TABLES: Cricket_info, FootBall_info)
2) INSERT 15 data for each table.
3) By using alter add 2 columns
4) Rename 4 columns
5) update 5 data for each table using AND, OR, IN, NOT IN
6) delete 3 data for each table.
7) Fetch the data using Where, AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN,
LIKE, NOT LIKE.  */

CREATE DATABASE task5;
CREATE TABLE Cricket_info(id int, player_name varchar(20), team varchar(20), captain varchar(20), higest_run int, year int, wickets int, native varchar(20), sixes int, economy_rate int);

INSERT INTO Cricket_info VALUES (1, 'Virat', 'RCB', 'Virat', 741, 2024, 6, 'Delhi', 38, 163);
INSERT INTO Cricket_info VALUES (2, 'Rohit', 'MI', 'Rohit', 653, 2023, 2, 'Mumbai', 45, 147);
INSERT INTO Cricket_info VALUES (3, 'MS Dhoni', 'CSK', 'Dhoni', 503, 2022, 1, 'Ranchi', 34, 135);
INSERT INTO Cricket_info VALUES (4, 'Chris Gayle', 'RCB', 'Virat', 733, 2012, 5, 'Jamaica', 59, 180);
INSERT INTO Cricket_info VALUES (5, 'AB de Villiers', 'RCB', 'Virat', 687, 2016, 3, 'Pretoria', 48, 158);
INSERT INTO Cricket_info VALUES (6, 'David Warner', 'SRH', 'Warner', 692, 2019, 2, 'Sydney', 39, 150);
INSERT INTO Cricket_info VALUES (7, 'Andre Russell', 'KKR', 'Narine', 541, 2021, 12, 'Jamaica', 52, 172);
INSERT INTO Cricket_info VALUES (8, 'KL Rahul', 'LSG', 'Rahul', 616, 2020, 1, 'Bangalore', 42, 145);
INSERT INTO Cricket_info VALUES (9, 'Suryakumar', 'MI', 'Rohit', 612, 2023, 0, 'Mumbai', 50, 160);
INSERT INTO Cricket_info VALUES (10, 'Shubman Gill', 'GT', 'Hardik', 890, 2023, 2, 'Punjab', 44, 148);
INSERT INTO Cricket_info VALUES (11, 'Rashid Khan', 'GT', 'Hardik', 250, 2023, 24, 'Afghanistan', 15, 135);
INSERT INTO Cricket_info VALUES (12, 'Bumrah', 'MI', 'Rohit', 89, 2024, 27, 'Gujarat', 4, 120);
INSERT INTO Cricket_info VALUES (13, 'Hardik Pandya', 'GT', 'Hardik', 482, 2022, 10, 'Baroda', 37, 155);
INSERT INTO Cricket_info VALUES (14, 'Rinku Singh', 'KKR', 'Shreyas', 474, 2023, 0, 'Uttar Pradesh', 35, 152);
INSERT INTO Cricket_info VALUES (15, 'Yuzvendra Chahal', 'RR', 'Samson', 63, 2022, 27, 'Haryana', 6, 126);

select * from Cricket_info;



/* 3) By using alter add 2 columns */
ALTER table  Cricket_info  ADD COLUMN age int, ADD COLUMN birth_year int;
select * from Cricket_info;

/* 4) Rename 4 columns*/

ALTER TABLE Cricket_info  RENAME COLUMN wickets to wickets_of_year;
ALTER TABLE Cricket_info RENAME COLUMN  captain to leader;
ALTER TABLE Cricket_info RENAME COLUMN native to birth_place;
ALTER TABLE Cricket_info RENAME COLUMN sixes to six;


/* 5) update 5 data for each table using AND, OR, IN, NOT IN */
update Cricket_info set year=2023 where id  in (1,2,3,4,5);
select * from Cricket_info;

update Cricket_info set higest_run=777 where id=1 And year=2023;
update Cricket_info set higest_run=777 where id=2 And year=2023;
update Cricket_info set higest_run=777 where id=3 And year=2023;
update Cricket_info set higest_run=777 where id=4 And year=2023;

update Cricket_info set wickets_of_year=4 where id in(1,2,3,4,5);
update Cricket_info set wickets_of_year=4 where id not in(1,2,3,4,5);
update Cricket_info set birth_place='usa' where id=5 or wickets_of_year=0;

select * from Cricket_info;

/* 6) delete 3 data for each table.*/
delete from Cricket_info where six=40;
delete from Cricket_info where six=38 and economy_rate=163;
delete from Cricket_info where economy_rate =150 or id =2;

/* 7) Fetch the data using Where, AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN,
LIKE, NOT LIKE.  */

select * from Cricket_info where economy_rate=135;
select * from Cricket_info where economy_rate=135 and six=34;
select * from Cricket_info where year=2023 or birth_place='paris';
select * from Cricket_info where id in(1,2,5,6,4,6,7,8);
select * from Cricket_info where id not in(5,7,8,9,10);
select * from Cricket_info where id between 6 and 8;
select * from Cricket_info where six not between 30 and 140;
select * from Cricket_info where player_name like 'r%';
select * from Cricket_info where year not like '2023%';

select * from Cricket_info;








