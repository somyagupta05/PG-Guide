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