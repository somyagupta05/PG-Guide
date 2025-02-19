-- window functions, also known as analytic functions allow you to perform calculation across a set of rows related to the current row.
-- Defined by an OVER() clause.
 -- it will only display total salary but we want other rows too so--

select sum(salary)
from employees;

