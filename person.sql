CREATE TABLE person (id SERIAL PRIMARY KEY,
                                       name VARCHAR(50),
                                            city VARCHAR(50));


INSERT INTO person (id, name, city)
VALUES (102,
        'Sham',
        'Mumbai'), (103,
                    'Paul',
                    'Chennai'), (101,
                                 'Raju',
                                 'Bangalore');


SELECT *
FROM person;

-- will give this as a readable error
postgres=# alter table person add constraint mob_no_less_than_10 check (length(mob)>=10);
ERROR: constraint "mob_no_less_than_10"
for relation "person" already exists postgres=# insert into person(mob) values (123);
ERROR: new row
for relation "person" violates check constraint "mob_no_less_than_10" DETAIL: Failing row contains (null,
                                                                                                    null,
                                                                                                    null,
                                                                                                    0,
                                                                                                    123).;

