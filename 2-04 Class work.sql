/*Syntax for adding constraint using constarint name
ALTER TABLE table_name ADD constraint constraint_name type_of_constraint
(column_name);*/

update cric_info set player_name = 'ViratKohli' where id = 3;

ALTER TABLE cric_info ADD CONSTRAINT player_name_uni UNIQUE(player_name);

ALTER TABLE cric_info ADD constraint team_name_uni unique(team_name);

ALTER TABLE cric_info DROP CONSTRAINT team_name_uni;


insert into cric_info values(5,'axar', 'india', 19, 50, 2000);

ALTER TABLE cric_info add constraint matches_chk check(no_of_matches > 100);

ALTER TABLE cric_info drop constraint matches_chk;

PRIMARY KEY:

CREATE TABLE food_info(id int primary key, food_item varchar(20), 
price decimal(4,2),
no_of_integrents int, chef_name varchar(20));

SELECT * FROM food_info;

INSERT INTO food_info values(1,'Rice', 50.00, 3,'sunil');
INSERT INTO food_info values(2,'noodles', 90.00, 4,'abc');

CREATE TABLE bank_info(id int, bank_name varchar(20), bank_branch varchar(20),
no_of_cust int, ifsc_code varchar(30), primary key(bank_name, bank_branch)); 

select * from bank_info;

insert into bank_info values(1,'sbi','btm', 500, 'sbibtm');
insert into bank_info values(2,'sbi','jaynagr', 800, 'sbijn');
insert into bank_info values(3,'hdfc','btm', 300, 'sbibt');

ENUM: Enumeration.

CREATE TABLE olympics_info(id int, game_name varchar(20), 
game_type enum('indoor', 'outdoor'),
country_name varchar(30), no_of_medals int, rank_position int, no_of_players int,
coach_name varchar(20), gender varchar(20), age int, sponsor varchar(20), weight int,
city varchar(20));

select * from olympics_info;
INSERT INTO olympics_info values(1,'javilthrow', 'outdoor',
'India', 2, 1, 1,'ABC', 'M', 30, 'PUMA', 60,'Delhi');

INSERT INTO olympics_info values(2,'Batminton', 1,
'India', 2, 1, 1,'ABC', 'M', 30, 'PUMA', 60,'Delhi');

Create table:
Furniture_info : 10 columns use any one column as enum
electronic_gadgets: 10 columns use any one column as enum
restaurant_info: 10 columns use any one column as enum
olympics_info: 10 columns use any one column as enum
For each table apply not null, unique, check constraint for 6 columns using alter.
Insert 15 data for each table.
ADD 2 COLUMN using alter.
update data for new columns.