CREATE DATABASE classwork_7Aprils
JOINS:

INNER JOIN: 
SELECT * FROM tab1 inner join tab2 
on tab1.column_name = tab2.column_name;

select * from bank_info;
select * from cust_info;

SELECT b.bank_name,c.cust_name FROM bank_info b inner join cust_info c
on b.bank_id = c.bank_id;

select * from loan_info;
select * from insurance_info;
SELECT * FROM loan_info l inner join
insurance_info i on l.loan_id = i.loan_id;

SELECT * FROM bank_info b inner join cust_info c 
on b.bank_id = c.bank_id inner join loan_info l
on l.cust_id = c.cust_id;

b.bank_id  c.bank_id  c.cust_id  l.cust_id
2           2           300         
3           3           301       
5           5           205       205


SELECT * FROM bank_info b inner join cust_info c
on b.bank_id = c.bank_id inner join loan_info l
on l.bank_id = c.bank_id inner join
insurance_info i on i.bank_id = l.bank_id;

SELECT * FROM bank_info b inner join cust_info c
on b.bank_id = c.bank_id inner join loan_info l
on l.cust_id = c.cust_id inner join
insurance_info i on i.cust_id = l.cust_id;

SELECT * FROM bank_info b inner join cust_info c
on b.bank_id = c.bank_id inner join loan_info l
on l.cust_id = c.cust_id inner join
insurance_info i on i.loan_id = l.loan_id;