-- use case
-- No of employees in each dept
 bank=# select dept from employees group by dept;
 dept -----------
 Marketing Finance IT HR (4 rows) ;

bank=# select dept, count(emp_id) from employees group by dept;
 dept | count -----------+-------
 Marketing | 2 Finance | 2 IT | 4 HR | 2 (4 rows);