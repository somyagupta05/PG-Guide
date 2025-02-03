-- conditions along with sql querry is clause
-- where
-- distinct
-- order by
-- limit
-- like
 -- ..............................
 -- where
bank=# select * from employees where emp_id=5;
 emp_id | fname | lname | email | dept | salary | hire_date --------+--------+-------+------------------------+------+----------+------------
 5 | Kavita | Rao | kavita.rao@example.com | HR | 47000.00 | 2020-11-10 (1 row);

bank=# select * from employees where dept='HR';
 emp_id | fname | lname | email | dept | salary | hire_date --------+--------+-------+-------------------------+------+----------+------------
 2 | Priya | Singh | priya.singh@example.com | HR | 45000.00 | 2019-03-22 5 | Kavita | Rao | kavita.rao@example.com | HR | 47000.00 | 2020-11-10 (2 rows);

-- OR.......................
bank=# select * from employees where dept='HR' or dept='Finance';
 emp_id | fname | lname | email | dept | salary | hire_date --------+--------+-------+--------------------------+---------+----------+------------
 2 | Priya | Singh | priya.singh@example.com | HR | 45000.00 | 2019-03-22 4 | Suman | Patel | suman.patel@example.com | Finance | 60000.00 | 2018-07-30 5 | Kavita | Rao | kavita.rao@example.com | HR | 47000.00 | 2020-11-10 9 | Anjali | Mehta | anjali.mehta@example.com | Finance | 61000.00 | 2018-12-03 (4 rows);

--  AND............
bank=# select * from employees where dept='IT' and salary>50000;
 emp_id | fname | lname | email | dept | salary | hire_date --------+-------+-------+-------------------------+------+----------+------------
 3 | Arjun | Verma | arjun.verma@example.com | IT | 55000.00 | 2021-06-01 8 | Rahul | Kumar | rahul.kumar@example.com | IT | 53000.00 | 2021-02-14 (2 rows);

--  REALTIONAL OPERATORS
-- < LESS THAN
-- > GRRETAER THAN
-- <= LESS THAN OR EQUAL TO
-- >= GREATER THAN OR EQUAL TO
-- = EQUAL TO
-- != NOT EQAUL TO
 -- .................................
-- IN operator
bank=# select * from employees where dept in ('IT','HR','Finance');
 emp_id | fname | lname | email | dept | salary | hire_date --------+--------+--------+--------------------------+---------+----------+------------
 1 | Raj | Sharma | raj.sharma@example.com | IT | 50000.00 | 2020-01-15 2 | Priya | Singh | priya.singh@example.com | HR | 45000.00 | 2019-03-22 3 | Arjun | Verma | arjun.verma@example.com | IT | 55000.00 | 2021-06-01 4 | Suman | Patel | suman.patel@example.com | Finance | 60000.00 | 2018-07-30 5 | Kavita | Rao | kavita.rao@example.com | HR | 47000.00 | 2020-11-10 7 | Neha | Desai | neha.desai@example.com | IT | 48000.00 | 2019-05-18 8 | Rahul | Kumar | rahul.kumar@example.com | IT | 53000.00 | 2021-02-14 9 | Anjali | Mehta | anjali.mehta@example.com | Finance | 61000.00 | 2018-12-03 (8 rows);

-- ....................................
-- NOT IN OPERTAOR
bank=# select * from employees where dept not in ('IT','HR','Finance');
 emp_id | fname | lname | email | dept | salary | hire_date --------+-------+-------+------------------------+-----------+----------+------------
 6 | Amit | Gupta | amit.gupta@example.com | Marketing | 52000.00 | 2020-09-25 10 | Vijay | Nair | vijay.nair@example.com | Marketing | 50000.00 | 2020-04-19 (2 rows) ;

-- ............................
-- BETWEEN OPERATOR
bank=# select * from employess where salary between 50000 and 60000;
ERROR: relation "employess" does not exist LINE 1:
select *
from employess
where salary between 50000 and 60000... ^ bank=# select * from employees where salary between 50000 and 60000;
 emp_id | fname | lname | email | dept | salary | hire_date --------+-------+--------+-------------------------+-----------+----------+------------
 1 | Raj | Sharma | raj.sharma@example.com | IT | 50000.00 | 2020-01-15 3 | Arjun | Verma | arjun.verma@example.com | IT | 55000.00 | 2021-06-01 4 | Suman | Patel | suman.patel@example.com | Finance | 60000.00 | 2018-07-30 6 | Amit | Gupta | amit.gupta@example.com | Marketing | 52000.00 | 2020-09-25 8 | Rahul | Kumar | rahul.kumar@example.com | IT | 53000.00 | 2021-02-14 10 | Vijay | Nair | vijay.nair@example.com | Marketing | 50000.00 | 2020-04-19 (6 rows);

--  ..........................................
-- ...............................
-- DISTINCT CLAUSE
-- To get unique values
