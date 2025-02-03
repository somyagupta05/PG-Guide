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

