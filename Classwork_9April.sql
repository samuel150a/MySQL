CREATE DATABASE Classwork_9April;
SUBQUERIES:

SELECT * FROM bank_info;
select * from cust_info;

SELECT bank_name from bank_info where no_of_cust = (
SELECT bank_id from cust_info where cust_name = 'Vojeshwini');

SELECT ifsc_code from bank_info where bank_id = (
SELECT bank_id from cust_info where cust_name = 'sneha');

SELECT * FROM bank_info; bank_id
select * from cust_info; bank_id, cust_id
select * from loan_info; bank_id, cust_id, loan_id
SELECT * FROM insurance_info; insurance_id, bank_id, cust_id, loan_id


SELECT bank_name from bank_info where bank_id in
(SELECT bank_id from cust_info where cust_id in
(SELECT cust_id from loan_info where loan_id in 
(SELECT loan_id from insurance_info where insur_typr = 'Business Insurance')));

SELECT bank_name from bank_info where bank_id in 
(SELECT bank_id from cust_info where cust_id in
(SELECT cust_id from loan_info where loan_name = 'Business Loan'));


SELECT cust_name from cust_info where cust_id in
(SELECT cust_id from loan_info where loan_name = 'Home Loan');


ALTER TABLE bank_info add column loan_status varchar(12)
default 'ACTIVE';


SELECT * FROM bank_info; 
select * from cust_info; 
select * from loan_info; 
SELECT * FROM insurance_info; 

select loan_status from bank_info where bank_id in
(SELECT bank_id from cust_info where cust_id in
(SELECT cust_id from loan_info where loan_name = 'Business Loan'));


update bank_info b set loan_status = 'Inactive' where b.bank_id in
(SELECT c.bank_id from cust_info c where c.cust_id in
(SELECT l.cust_id from loan_info l where l.loan_name = 'Business Loan'))
and l.loan_id;



delete from bank_info where bank_id in(
select bank_id from cust_info where cust_id in(
select cust_id from loan_info where loan_id in(
select loan_id from insurance_info where insur_typr = 'Business Insurance')));
