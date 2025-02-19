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
 Priya | 45000.00 | 45000.00 Kavita | 47000.00 | 92000.00 Neha | 48000.00 | 140000.00 Raj | 50000.00 | 240000.00 Vijay | 50000.00 | 240000.00 Amit | 52000.00 | 292000.00 Rahul | 53000.00 | 345000.00 Suman | 60000.00 | 405000.00 Anjali | 61000.00 | 466000.00 Arjun | 71000.00 | 537000.00 (10 rows)