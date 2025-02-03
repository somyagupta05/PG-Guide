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