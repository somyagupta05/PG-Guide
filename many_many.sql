create table students(s_id serial primary key, name varchar(100) not null);


create table courses(c_id serial primary key, name varchar(100) not null, fee numeric not null);


create table enrollment(enrollment_id serial primary key, s_id int not null, c_id int not null, enrollment_date date not null,
                        foreign key (s_id) references students(s_id),
                        foreign key (c_id) references courses(c_id));