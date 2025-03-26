24/03/2025

BETWEEN:

SELECT * FROM scam_info;

1-1000

SELECT * FROM scam_info where scam_id not between 5 and 8;

UPDATE: 

/*SYNTAX FOR update the data
UPDATE table_name set column_name = data;*/

UPDATE scam_info set state = 'Karnataka' where scam_id = 2;
update scam_info set scam_id = 9 where scam_id = 6;
select * from scam_info where state = 'Maharashtra'
and scam_id = 9;

UPDATE scam_info set year = 2024 
where state = 'Maharashtra'
and scam_id = 9 and year = 2018;

4,5,7,12,15

select * from scam_info where scam_id in(4,5,7,12,15,20,34);

UPDATE scam_info set year = 1999
 where scam_id in(4,5,7,12,15,20,34);









UPDATE scam_info set amount_in_crores = 11111
where scam_id = 30 or state = 'Multiple';

select * from scam_info;

UPDATE scam_info set year = 2000, amount_in_crores
= 22222 where scam_id = 7;




SELECT * FROM state_info;
SELECT * FROM state_info_dup;

create table state_info_dup as select * from state_info;

select * from scam_info;

alter table scam_info add column country varchar(20)
default 'India';

update scam_info set country = 'India';

ALTER TABLE scam_info drop column country;