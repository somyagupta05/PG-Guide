create table students(s_id serial primary key, name varchar(100) not null);


create table courses(c_id serial primary key, name varchar(100) not null, fee numeric not null);


create table enrollment(enrollment_id serial primary key, s_id int not null, c_id int not null, enrollment_date date not null,
                        foreign key (s_id) references students(s_id),
                        foreign key (c_id) references courses(c_id));


insert into students (name)
values ('Raju'), ('Sham'), ('Alex');


insert into courses (name,fee)
values ('Maths',
        500.00), ('Physics',
                  600.00), ('Chemistry',
                            700.00);


insert into enrollment(s_id,c_id,enrollment_date)
values (1,
        1,
        '2024-01-01'), --Raju enrolled in Mathematics
(1,
 2,
 '2024-01-15'), --Raju enrolled in Physics
(2,
 1,
 '2024-02-01'), --sham enrolled in Mathematics
(2,
 3,
 '2024-02-15'), --sham enrolled in Chemistry
(3,
 3,
 '2024-03-25'); --Sham enrolled in Chemistry

institute=# select s.name, c.name from enrollment e join students s on e.s_id=s.s_id join courses c on c.c_id=e.c_id;
 name | name ------+-----------
 Raju | Maths Raju | Physics Sham | Maths Sham | Chemistry Alex | Chemistry (5 rows);

institute=# select s.name, c.name,c.fee, e.enrollment_date from enrollment e

join students s on e.s_id=s.s_id
join courses c on c.c_id=e.c_id;

name | name | fee | enrollment_date ------+-----------+--------+-----------------
 Raju | Maths | 500.00 | 2024-01-01 Raju | Physics | 600.00 | 2024-01-15 Sham | Maths | 500.00 | 2024-02-01 Sham | Chemistry | 700.00 | 2024-02-15 Alex | Chemistry | 700.00 | 2024-03-25 (5 rows);