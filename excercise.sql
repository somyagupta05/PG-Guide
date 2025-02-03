-- TASK ONE --- 1:Raj:Sharma:IT
 bank=# select concat_ws(':',emp_id,fname,lname,dept) from employees where em
p_id=1;

concat_ws -----------------
 1:Raj:Sharma:IT (1 row);

--  TASK TWO SPACE IN RAJ SHARMA
bank=# select concat_ws(':',emp_id,concat_ws(' ',fname,lname),dept) from emp
loyees
where emp_id=1;

concat_ws -----------------
 1:Raj Sharma:IT (1 row);

--  TASK THREE DEPT IN UPPER CASE
bank=# select concat_ws(':',emp_id,fname,upper(dept)) from employees where emp_id=4;
 concat_ws -----------------
 4:Suman:FINANCE (1 row);

--  TASK 4 FIRST LETTER OF DEPT AND THEN EMP_ID
bank=# select concat(left(dept,1),emp_id),fname from employees;
 concat | fname --------+--------
 I1 | Raj H2 | Priya I3 | Arjun F4 | Suman H5 | Kavita M6 | Amit I7 | Neha I8 | Rahul F9 | Anjali M10 | Vijay;

-- ............................................
 -- QUESTIONS
-- 1. FIND DIFFERENT TYPE OF DEPARTMENT IN DATABSES?
bank=# SELECT DISTINCT(DEPT) FROM EMPLOYEES;
 dept -----------
 Marketing Finance IT HR (4 rows);

-- 2. DISPLAY RECORDS WITH HIGH-LOW SALARY
ank=# select * from employees order by salary desc;
 emp_id | fname | lname | email | dept | salary | hire_date --------+--------+--------+--------------------------+-----------+----------+------------
 9 | Anjali | Mehta | anjali.mehta@example.com | Finance | 61000.00 | 2018-12-03 4 | Suman | Patel | suman.patel@example.com | Finance | 60000.00 | 2018-07-30 3 | Arjun | Verma | arjun.verma@example.com | IT | 55000.00 | 2021-06-01 8 | Rahul | Kumar | rahul.kumar@example.com | IT | 53000.00 | 2021-02-14 6 | Amit | Gupta | amit.gupta@example.com | Marketing | 52000.00 | 2020-09-25 10 | Vijay | Nair | vijay.nair@example.com | Marketing | 50000.00 | 2020-04-19 1 | Raj | Sharma | raj.sharma@example.com | IT | 50000.00 | 2020-01-15 7 | Neha | Desai | neha.desai@example.com | IT | 48000.00 | 2019-05-18 5 | Kavita | Rao | kavita.rao@example.com | HR | 47000.00 | 2020-11-10 2 | Priya | Singh | priya.singh@example.com | HR | 45000.00 | 2019-03-22 (10 rows);

-- 3.HOW TO SEE ONLY TOP3 RECORDS FROM A TABLE?
bank=# select * from employees limit 3;
 emp_id | fname | lname | email | dept | salary | hire_date --------+-------+--------+-------------------------+------+----------+------------
 1 | Raj | Sharma | raj.sharma@example.com | IT | 50000.00 | 2020-01-15 2 | Priya | Singh | priya.singh@example.com | HR | 45000.00 | 2019-03-22 3 | Arjun | Verma | arjun.verma@example.com | IT | 55000.00 | 2021-06-01 (3 rows);

-- 4.SHOW RECORDS WHERE FIRST NAME START WITH LETTER 'A'?
bank=# select * from employees where fname like 'A%';
 emp_id | fname | lname | email | dept | salary | hire_date --------+--------+-------+--------------------------+-----------+----------+------------
 3 | Arjun | Verma | arjun.verma@example.com | IT | 55000.00 | 2021-06-01 6 | Amit | Gupta | amit.gupta@example.com | Marketing | 52000.00 | 2020-09-25 9 | Anjali | Mehta | anjali.mehta@example.com | Finance | 61000.00 | 2018-12-03 (3 rows) ;

-- 5.SHOW RECORDS WHERE LENGTH OF THE LNAME IS 4 CHARACTER?
bank=# select * from employees where length(lname)=4;
 emp_id | fname | lname | email | dept | salary | hire_date --------+-------+-------+------------------------+-----------+----------+------------
 10 | Vijay | Nair | vijay.nair@example.com | Marketing | 50000.00 | 2020-04-19 (1 row);

-- 6.FIND TOTAL NUMBER OF EMPLOYEES IN DATABASE?
bank=# select count(emp_id) from employees;
 count -------
 10 (1 row);

-- 7. FIND NUMBER OF EMPLOYEES IN EACH DEPARTMENT?
bank=# select dept,count(emp_id) from employees group by dept;
 dept | count -----------+-------
 Marketing | 2 Finance | 2 IT | 4 HR | 2 (4 rows);

-- 8. FIND LOWEST SALARY PAYIING?
 bank=# select min(salary) from employees;
 min ----------
 45000.00 (1 row);

-- 9.FIND HIGHEST SALARY PAYING?
bank=# select max(salary) from employees;
 max ----------
 61000.00 (1 row);

--  or
-- can also do with limit but in case of limit its fixed how many persons you want to display 1 2 or 3.
-- when you have more than one person
bank=# select * from employees where salary=(select max(Salary) from employe
es);

emp_id | fname | lname | email | dept | salary | hire_date --------+--------+-------+--------------------------+---------+----------+------------
 9 | Anjali | Mehta | anjali.mehta@example.com | Finance | 61000.00 | 2018-12-03 (1 row);

-- 10.FIND TOTAL SALARY PAYING IN IT DEPARTMENT?
 bank=# select sum(salary) from employees where dept='IT';
 sum -----------
 206000.00 (1 row);

-- 11.AVERAGE SALARY PAYING IN EACH DEPARTMENT?
bank=# select dept,avg(salary) from employees group by dept;
 dept | avg -----------+--------------------
 Marketing | 51000.000000000000 Finance | 60500.000000000000 IT | 51500.000000000000 HR | 46000.000000000000 (4 rows) ;

