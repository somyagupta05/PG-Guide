-- added high low
 bank=# select fname,salary,
bank-# case bank-#
           when salary>=50000 then 'High' bank-#
           else 'Low' bank-#
       end bank-# as al_cat
from employees;

fname | salary | al_cat --------+----------+--------
 Raj | 50000.00 | High Priya | 45000.00 | Low Arjun | 55000.00 | High Suman | 60000.00 | High Kavita | 47000.00 | Low Amit | 52000.00 | High Neha | 48000.00 | Low Rahul | 53000.00 | High Anjali | 61000.00 | High Vijay | 50000.00 | High (10 rows);

--  for mid low and high
bank=# select fname,salary, case when salary>55000 then 'HIGH' when salary between 48000 and 55000 then 'MID' else 'LOW' end as sal_cat from employees;
 fname | salary | sal_cat --------+----------+---------
 Raj | 50000.00 | MID Priya | 45000.00 | LOW Arjun | 55000.00 | MID Suman | 60000.00 | HIGH Kavita | 47000.00 | LOW Amit | 52000.00 | MID Neha | 48000.00 | MID Rahul | 53000.00 | MID Anjali | 61000.00 | HIGH Vijay | 50000.00 | MID (10 rows) ;

-- ........................
--  task
-- add bonus column which contains 10% of salary
bank=# select fname,salary,case when salary>0 then round(salary*.10) end as
bonus
from employees;

fname | salary | bonus --------+----------+-------
 Raj | 50000.00 | 5000 Priya | 45000.00 | 4500 Arjun | 55000.00 | 5500 Suman | 60000.00 | 6000 Kavita | 47000.00 | 4700 Amit | 52000.00 | 5200 Neha | 48000.00 | 4800 Rahul | 53000.00 | 5300 Anjali | 61000.00 | 6100 Vijay | 50000.00 | 5000 (10 rows);

--  ...........................
-- task
-- group sal by high low mid
bank=# select case when salary>55000 then 'HIGH' when salary between 48000 and 5500
0 then 'MID' else 'LOW' end as sal_cat,
                               count(emp_id)
from employees
group by sal_c at;

sal_cat | count ---------+-------
 MID | 6 HIGH | 2 LOW | 2 (3 rows);