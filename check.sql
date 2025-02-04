-- how to make sure phone number is of 10 digits only
-- used for validity and verification of data.
postgres=# alter table person add column mob varchar(15) check (length(mob)>
=10);


ALTER TABLE postgres=# select * from person;
 id | fname | city | age | mob -----+-------+----------+-----+-----
 102 | Sham | Mumbai | 0 | 103 | Paul | Chennai | 0 | 101 | Raju | Banglore | 0 | (3 rows);

--  adding number
-- it will give error as only 3 digits are added
postgres=# insert into person(mob) values (123);
ERROR: new row
for relation "person" violates check constraint "person_mob_check" DETAIL: Failing row contains (null,
                                                                                                 null,
                                                                                                 null,
                                                                                                 0,
                                                                                                 123). --on adding 10 digits it will not give error  ;
 postgres=# insert into person(mob) values (1234567890);

INSERT 0 1 postgres=# select * from person;
 id | fname | city | age | mob -----+-------+----------+-----+------------
 102 | Sham | Mumbai | 0 | 103 | Paul | Chennai | 0 | 101 | Raju | Banglore | 0 | | | | 0 | 1234567890 (4 rows)