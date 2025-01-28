-- an attributr that specifies the type of data in a column of our database -table
--
 -- most widely used are
--numeric-int double float DECIMAL
--string-varchar
--date - date
--boolean- boolean
 --
--deciaml(5,2)  total digit 5 out of which 2 are decimal
 --
--PRIMARY KEY
--the primary key constraints uniquely identifies each record in a table
--primary keys must contain unique values and cannot contain null values
--a table can have only one primary key
 -----
 --NOT NULL
--null values are not allowed in this particular column

create table customers(id int not null, name varchar(100) not null) ------
----
--DEFAULT VALUE
-- will not give place to null but write savings

create table customers(acc_no int primary key, name varchar(100) not null, acc_type varchar(50) not null default 'savings') ----
--AUTO INCREMENT
-- will automatically write id

create table employees(id serial primary key, firstname varchar(50), lastname varchar(50));