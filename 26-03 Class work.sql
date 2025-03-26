/* INSTR: INSTRING:

'BANGALORE' 
select instr(string, character);
SELECT INSTR('Bangalore','n');
SELECT INSTR('Bangalore','a');

select name,instr(name,'k') from cricket_info;

substr:
Bangalore
select substr(String, start position, no of characters);
select substr('Karnataka', 1,5);


SELECT country,SUBSTR(country,2,8) from cricket_info;

Length:


select * from cricket_info;
SELECT team,LENGTH(team) from cricket_info;

LTRIM: LEFT REMOVE
RTRIM: RIGHT REMOVE


SELECT team,LTRIM(team) from cricket_info;

SELECT UPPER(name) from cricket_info;
SELECT lower(name) from cricket_info;

concat:

SELECT CONCAT(name,team,country,matches,runs,wickets) from cricket_info;


Aggregate Functions:
Alias: 
1) count:
select count(*) as no_of_team from cricket_info;
select count(team) from cricket_info;
select * from cricket_info;

2) sum:
select sum(catches) as total_catches from cricket_info;

3) max:

SELECT MAX(highest_score) as high_score from cricket_info;

min:
SELECT min(runs) as min_runs from cricket_info;

avg:
SELECT avg(runs) as avg_runs from cricket_info;
*/


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




/* similarly for foodball*/
/*1) CREATE 2 TABLES WITH 10 columns(TABLES: Cricket_info, FootBall_info) */
CREATE TABLE FootBall_info(id int,player_name varchar(90), team_name varchar(20), gersey_color varchar(60), leader_name varchar(40), no_trophy_won int, birth_place varchar(40), year int, country varchar(67),goal_keeper varchar(70)); 

/*2) INSERT 15 data for each table.*/

INSERT INTO FootBall_info VALUES (1, 'Lionel Messi', 'Inter Miami', 'Pink', 'Messi', 44, 'Rosario', 2024, 'Argentina', 'Drake Callender');
INSERT INTO FootBall_info VALUES (2, 'Cristiano Ronaldo', 'Al Nassr', 'Blue & Yellow', 'Ronaldo', 34, 'Madeira', 2024, 'Portugal', 'David Ospina');
INSERT INTO FootBall_info VALUES (3, 'Neymar Jr', 'Al Hilal', 'Blue', 'Neymar', 25, 'Mogi das Cruzes', 2023, 'Brazil', 'Bounou');
INSERT INTO FootBall_info VALUES (4, 'Kylian Mbappe', 'PSG', 'Blue & Red', 'Marquinhos', 15, 'Paris', 2024, 'France', 'Gianluigi Donnarumma');
INSERT INTO FootBall_info VALUES (5, 'Kevin De Bruyne', 'Man City', 'Sky Blue', 'De Bruyne', 18, 'Drongen', 2024, 'Belgium', 'Ederson');
INSERT INTO FootBall_info VALUES (6, 'Mohamed Salah', 'Liverpool', 'Red', 'Van Dijk', 12, 'Nagrig', 2024, 'Egypt', 'Alisson Becker');
INSERT INTO FootBall_info VALUES (7, 'Robert Lewandowski', 'Barcelona', 'Blue & Red', 'Lewandowski', 24, 'Warsaw', 2024, 'Poland', 'Marc-André ter Stegen');
INSERT INTO FootBall_info VALUES (8, 'Harry Kane', 'Bayern Munich', 'Red & White', 'Kimmich', 3, 'London', 2024, 'England', 'Manuel Neuer');
INSERT INTO FootBall_info VALUES (9, 'Luka Modric', 'Real Madrid', 'White', 'Nacho', 21, 'Zadar', 2024, 'Croatia', 'Thibaut Courtois');
INSERT INTO FootBall_info VALUES (10, 'Erling Haaland', 'Man City', 'Sky Blue', 'De Bruyne', 5, 'Leeds', 2024, 'Norway', 'Ederson');
INSERT INTO FootBall_info VALUES (11, 'Vinicius Jr', 'Real Madrid', 'White', 'Nacho', 6, 'São Gonçalo', 2024, 'Brazil', 'Thibaut Courtois');
INSERT INTO FootBall_info VALUES (12, 'Antoine Griezmann', 'Atletico Madrid', 'Red & White', 'Koke', 11, 'Mâcon', 2024, 'France', 'Jan Oblak');
INSERT INTO FootBall_info VALUES (13, 'Bruno Fernandes', 'Man United', 'Red', 'Fernandes', 7, 'Maia', 2024, 'Portugal', 'André Onana');
INSERT INTO FootBall_info VALUES (14, 'Jude Bellingham', 'Real Madrid', 'White', 'Nacho', 3, 'Stourbridge', 2024, 'England', 'Thibaut Courtois');
INSERT INTO FootBall_info VALUES (15, 'Sadio Mane', 'Al Nassr', 'Blue & Yellow', 'Ronaldo', 16, 'Sedhiou', 2024, 'Senegal', 'David Ospina');

select * from FootBall_info;

/* 3) By using alter add 2 columns */
ALTER TABLE FootBall_info ADD COLUMN Extra1 int, ADD COLUMN Extra2 varchar(88);


 /* 4) Rename 4 columns*/
 ALTER TABLE FootBall_info RENAME COLUMN leader_name to captain;
  ALTER TABLE FootBall_info RENAME COLUMN goal_keeper to Goal_keee;
  ALTER TABLE FootBall_info RENAME COLUMN team_name to Team;
  ALTER TABLE FootBall_info RENAME COLUMN no_trophy_won to Trophies;
select * from FootBall_info;

  /* 5) update 5 data for each table using AND, OR, IN, NOT IN */
 update FootBall_info set year=2023 where id  in (1,2,3,4,5);
  update FootBall_info set year=2020  where id not in (1,2,3,4,5);
   update FootBall_info set year=2023 where id  in (1,2,3,4,5);

update FootBall_info set gersey_color='pp' where Trophies=3 And year=2020;
update FootBall_info set gersey_color='go' where id=2 And year=2023;

update FootBall_info set year=2004 where id in(1,2,3,4,5);
update FootBall_info set year=1998 where id not in(6,7,8,9,10);
update FootBall_info set gersey_color='pink' where id=5 or year=0;
 
 select * from FootBall_info;
 
/* 6) delete 3 data for each table. */

DELETE from FootBall_info WHERE Team='PSG';
DELETE from FootBall_info WHERE year=1998;
DELETE from FootBall_info WHERE id=6;

/* 7) Fetch the data using Where, AND, OR, IN, NOT IN, BETWEEN, NOT BETWEEN,
LIKE, NOT LIKE.  */

select * from FootBall_info where id between 9 and 10;
select * from FootBall_info where id in(8,9,10);
select * from FootBall_info where id not in(8,9,10);
select * from FootBall_info where id not between 9 and 10;
select * from FootBall_info where id=8 and Trophies=9 ;
select * from FootBall_info where captain=8 or Trophies=24 ;
select * from FootBall_info where captain like 'd%';
select * from FootBall_info where captain  not like 'd%';


 select * from FootBall_info;
select * from Cricket_info;



select player_name,instr(player_name,'MS') from Cricket_info;
SELECT player_name,SUBSTR(player_name,2,3) from Cricket_info;
SELECT team,LENGTH(team) from Cricket_info;
SELECT team,LTRIM(team) from Cricket_info;
SELECT player_name,RTRIM(player_name) from Cricket_info;

SELECT UPPER(player_name) from Cricket_info;
SELECT lower(player_name) from Cricket_info;

SELECT CONCAT(player_name,team,leader,birth_place) from Cricket_info;


/* Aggregate Functions:*/

select count(*) as team from cricket_info;
select sum(wickets_of_year) as wickets from Cricket_info;

SELECT MAX(economy_rate) as economy from Cricket_info;

SELECT min(economy_rate) as economy_min  from Cricket_info;
select * from Cricket_info;

SELECT avg(six) as avg_runs from Cricket_info;


 











