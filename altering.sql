-- how to add or remove column
-- add new column age
postgres=# alter table person add column age int;

ALTER TABLE postgres=# select * from person;
 id | name | city | age -----+------+----------+-----
 102 | Sham | Mumbai | 103 | Paul | Chennai | 101 | Raju | Banglore | (3 rows)