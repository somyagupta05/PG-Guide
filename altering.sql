-- how to add or remove column
-- add new column age
postgres=# alter table person add column age int;

ALTER TABLE postgres=# select * from person;
 id | name | city | age -----+------+----------+-----
 102 | Sham | Mumbai | 103 | Paul | Chennai | 101 | Raju | Banglore | (3 rows);

--  drop column age
postgres=# alter table person drop column age;

ALTER TABLE postgres=# select * from person;
 id | name | city -----+------+----------
 102 | Sham | Mumbai 103 | Paul | Chennai 101 | Raju | Banglore (3 rows);

--  add default value as 0 in age
postgres=# alter table person add column age int default 0;

ALTER TABLE postgres=# select * from person;
 id | name | city | age -----+------+----------+-----
 102 | Sham | Mumbai | 0 103 | Paul | Chennai | 0 101 | Raju | Banglore | 0 (3 rows) ;