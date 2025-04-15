CREATE DATABASE class_work8April;
LEFT JOIN:

TAB1      TAB2
1          1
2          2
3          4
4          11 
5          12
6           4
7          15
8          9
9          20
10         21


TAB1      TAB2
1          1
2          2
3          NULL
4          4
5          NULL
6           NULL
7          NULL
8          NULL
9          9
10         NULL


SELECT b.bank_id, c.bank_id FROM bank_info b LEFT JOIN cust_info c
on b.bank_id = c.bank_id;

SELECT b.bank_id, c.bank_id, l.bank_id from bank_info b left join cust_info c
on b.bank_id = c.bank_id left join loan_info l on
l.bank_id = c.bank_id;

SELECT b.bank_id, c.bank_id, l.bank_id from bank_info b left join cust_info c
on b.bank_id = c.bank_id left join loan_info l on
l.bank_id = c.bank_id;

RIGHT JOIN:

SELECT * FROM bank_info b right join
cust_info c on b.bank_id = c.bank_id;



SELECT b.bank_id,c.bank_id, l.bank_id FROM bank_info b inner join cust_info c
on b.bank_id = c.bank_id left join
loan_info l on l.bank_id = c.bank_id;


SET OPEARTORS:

SELECT bank_id from bank_info
union
select bank_id from cust_info
union
select bank_id from loan_info;


SELECT bank_id from bank_info
union all
select bank_id from cust_info;


SELECT bank_id from bank_info
intersect
select bank_id from cust_info;