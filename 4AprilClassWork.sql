CREATE DATABASE 4APRIL;

/* Class Work: 

CREATE TABLE college_info(coll_id int,
coll_name varchar(30), no_of_students int,no_of_branches int,
loc varchar(30));

ALTER TABLE college_info add constraint coll_id_pk
primary key(coll_id);

select * from college_info;

create table student_info(st_id int,
st_name varchar(30), coll_id int, branch varchar(20),
semester int);

ALTER TABLE student_info add constraint coll_id_fk
foreign key(coll_id) references college_info(coll_id)
ON DELETE CASCADE ON UPDATE CASCADE;

select * from college_info;
select * from student_info;

delete from college_info where coll_id = 605;





update college_info set coll_id = 610 where coll_id = 601;








bank_info(bank_id, bank_name, bank_loc, ifsc_code, no_of_cust)
cust_info(cust_id, cust_name, acc_no, bank_id,balance)
loan_info(loan_id, loan_name, bank_id, cust_id, loan_amount)
insurance_info(insr_id, insr_type, policy_no, bank_id,cust_id,loan_id)