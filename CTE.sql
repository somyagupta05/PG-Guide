-- CTE(Common Table Expression) is a temporary result set that you can define within a query to simplify complex sql statements.
-- .................................................
 -- use case 1:
-- we want to calculate the avergae salary per department and then find all employees whose salary is above the average salry of thie department.
 with avg_sal as
  (select dept,
          avg(salary) as avg_salary
   from employees
   group by dept)
select e.emp_id,
       e.fname,
       e.dept,
       e.salary,
       a.avg_salary
from employees e
join avg_sal a on e.dept=a.dept
where e.salary>a.avg_salary;

emp_id | fname | dept | salary | avg_salary --------+--------+-----------+----------+--------------------
 5 | Kavita | HR | 47000.00 | 46000.000000000000 6 | Amit | Marketing | 52000.00 | 51000.000000000000 9 | Anjali | Finance | 61000.00 | 60500.000000000000 3 | Arjun | IT | 71000.00 | 55500.000000000000;

--  USE CASE 2:
-- we want to find the highest-paid employee in each department.
with max_sal as
  (select dept,
          max(salary) as max_salary
   from employees
   group by dept)
select e.emp_id,
       e.fname,
       e.dept,
       e.salary
from employees e
join max_sal m on e.dept=m.dept
where e.salary=m.max_salary;

bank-#
where e.salary=m.max_salary;

emp_id | fname | dept | salary --------+--------+-----------+----------
 5 | Kavita | HR | 47000.00 6 | Amit | Marketing | 52000.00 9 | Anjali | Finance | 61000.00 3 | Arjun | IT | 71000.00 (4 rows);

--  IMPORTANT POINTS-----
-- once CTE has been created it can only be used once. it will not be persisted.