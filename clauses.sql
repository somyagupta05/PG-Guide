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

bank=# select * from employees where dept='HR' or dept='Finance';
 emp_id | fname | lname | email | dept | salary | hire_date --------+--------+-------+--------------------------+---------+----------+------------
 2 | Priya | Singh | priya.singh@example.com | HR | 45000.00 | 2019-03-22 4 | Suman | Patel | suman.patel@example.com | Finance | 60000.00 | 2018-07-30 5 | Kavita | Rao | kavita.rao@example.com | HR | 47000.00 | 2020-11-10 9 | Anjali | Mehta | anjali.mehta@example.com | Finance | 61000.00 | 2018-12-03 (4 rows)