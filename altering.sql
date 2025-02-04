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

--  how to rename a column
postgres=# alter table person rename column name to fname;

ALTER TABLE postgres=# select * from person;
 id | fname | city | age -----+-------+----------+-----
 102 | Sham | Mumbai | 0 103 | Paul | Chennai | 0 101 | Raju | Banglore | 0 (3 rows) ;

--  how to rename table name

alter table contacts rename to mycontacts;

-- another way
rename table contacts to mycontacts;

-- ..............
-- to change varchar ex if you get longer name
postgres=# alter table person alter column fname set data type varchar(150);

ALTER TABLE postgres=# \d person
 Table "public.person" Column | Type | Collation | Nullable | Default --------+------------------------+-----------+----------+---------
 id | integer | | | fname | character varying(150) | | | city | character varying(100) | | | age | integer | | | 0 ;

--  to set default unknown
postgres=# alter table person alter column fname set default 'unknow';

ALTER TABLE postgres=# \d person
 Table "public.person" Column | Type | Collation | Nullable | Default --------+------------------------+-----------+----------+-----------------------------
 id | integer | | | fname | character varying(150) | | | 'unknow'::character varying city | character varying(100) | | | age | integer | | | 0 ;

-- to drop default
postgres=# alter table person alter column fname drop default;

ALTER TABLE postgres=# \d person
 Table "public.person" Column | Type | Collation | Nullable | Default --------+------------------------+-----------+----------+---------
 id | integer | | | fname | character varying(150) | | | city | character varying(100) | | | age | integer | | | 0;

