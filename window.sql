-- window functions, also known as analytic functions allow you to perform calculation across a set of rows related to the current row.
-- Defined by an OVER() clause.
 -- it will only display total salary but we want other rows too so--

select sum(salary)
from employees;


select fname,
       salary,
       sum(salary) over(
                        order by salary)
from employees;

-- running sum-sum is incresing in each row as new value of each row is being added
fname | salary | sum --------+----------+-----------
 Priya | 45000.00 | 45000.00 Kavita | 47000.00 | 92000.00 Neha | 48000.00 | 140000.00 Raj | 50000.00 | 240000.00 Vijay | 50000.00 | 240000.00 Amit | 52000.00 | 292000.00 Rahul | 53000.00 | 345000.00 Suman | 60000.00 | 405000.00 Anjali | 61000.00 | 466000.00 Arjun | 71000.00 | 537000.00 (10 rows)--  BENEFITS OF WINDOW FUNCTIONS
-- 1. ADVANCED ANALYTICS: They enable complex calculations like running totals, moving averages,rank calculations, and cumulative distributions.
-- 2.Non-Aggregating: unlike aggregate functions, window function do not collapse rows. This means you can calcualte aggregated while retaining individual row details.
-- 3. Flexibility: They can be used in various clauses of sql, such as SELECT,ORDER BY, and HAVING providing a lot of flexibility in writting querries.
 -- example...........................
 -- moving average

select fname,
       salary,
       avg(salary) over(
                        order by salary)
from employees;

-- ROW_NUMBER

select row_number() over(
                         order by fname),
                    fname,
                    dept,
                    salary
from employees;

row_number | fname | dept | salary ------------+--------+-----------+----------
 1 | Amit | Marketing | 52000.00 2 | Anjali | Finance | 61000.00 3 | Arjun | IT | 71000.00 4 | Kavita | HR | 47000.00 5 | Neha | IT | 48000.00 6 | Priya | HR | 45000.00 7 | Rahul | IT | 53000.00 8 | Raj | IT | 50000.00 9 | Suman | Finance | 60000.00 10 | Vijay | Marketing | 50000.00;


select row_number() over(partition by dept),
                    fname,
                    dept,
                    salary
from employees;

employees;

row_number | fname | dept | salary ------------+--------+-----------+----------
 1 | Anjali | Finance | 61000.00 2 | Suman | Finance | 60000.00 1 | Priya | HR | 45000.00 2 | Kavita | HR | 47000.00 1 | Arjun | IT | 71000.00 2 | Neha | IT | 48000.00 3 | Rahul | IT | 53000.00 4 | Raj | IT | 50000.00 1 | Vijay | Marketing | 50000.00 2 | Amit | Marketing | 52000.00;