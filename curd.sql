-- in querry box write after going to particular db

create table person(id int, name varchar(100), city varchar(100));

instadb=# \c persondb;
You are now connected to database "persondb" as user "postgres". -- to view the table
 persondb=# \d person;
 Table "public.person" Column | Type | Collation | Nullable | Default --------+------------------------+-----------+----------+---------
 id | integer | | | name | character varying(100) | | | city | character varying(100) | | | --  inserting data

insert into person(id,name,city)
values (101,
        'sham',
        'mumbai'), (103,
                    'paul',
                    'chennai');

--to view table(read data)

select *
from person ;

--to update data

update person
set city='delhi'
where name='somya';

--to delete

delete
from person
where id=103;