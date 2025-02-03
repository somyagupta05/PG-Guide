-- USE CASES
-- how to find total number of employees?
-- employees with max salary?
-- Average salary of employees
-- count
-- sum
-- avg
-- min
-- max
-- .......................
-- COUNT
bank=# select count(emp_id) from employees;
 count -------
 10 (1 row);

--  ...................................
-- SUM
 bank=# select sum(salary) from employees;
 sum -----------
 521000.00 (1 row);