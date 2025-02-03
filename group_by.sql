-- use case
-- No of employees in each dept
 bank=# select dept from employees group by dept;
 dept -----------
 Marketing Finance IT HR (4 rows) ;

bank=# select dept, count(emp_id) from employees group by dept;
 dept | count -----------+-------
 Marketing | 2 Finance | 2 IT | 4 HR | 2 (4 rows);

--  salary
bank=# select dept, sum(salary) from employees group by dept;
 dept | sum -----------+-----------
 Marketing | 102000.00 Finance | 121000.00 IT | 206000.00 HR | 92000.00 (4 rows) ;