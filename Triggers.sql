-- TRIGGERS are special procedures in a database that automatically execute predefined actions in response to certain events on a specified table or view.
 -- USE CASE
-- create a trigger so that if we insert/update negative salary in a table it will be triggered and set it to 0.
 -- ...................
-- to create function

create or replace function check_salary() returns trigger as $$ begin
	if new.salary<0 then
		new.salary=0;
	end if;
	return new;
end;
$$ language plpgsql;

-- to create trigger

create or replace function check_salary() returns trigger as $$ begin
	if new.salary<0 then
		new.salary=0;
	end if;
	return new;
end;
$$ language plpgsql;

-- try to set value at negative it will not be set instead it will be set to 00 after running above two queries if you dont run these 2 querries it would have been set to -ve.
 call update_emp_salary(2,-52000);


select *
from employees;

emp_id | fname | lname | email | dept | salary | hire_date --------+--------+--------+--------------------------+-----------+-----------+------------
 4 | Suman | Patel | suman.patel@example.com | Finance | 60000.00 | 2018-07-30 5 | Kavita | Rao | kavita.rao@example.com | HR | 47000.00 | 2020-11-10 6 | Amit | Gupta | amit.gupta@example.com | Marketing | 52000.00 | 2020-09-25 7 | Neha | Desai | neha.desai@example.com | IT | 48000.00 | 2019-05-18 8 | Rahul | Kumar | rahul.kumar@example.com | IT | 53000.00 | 2021-02-14 9 | Anjali | Mehta | anjali.mehta@example.com | Finance | 61000.00 | 2018-12-03 10 | Vijay | Nair | vijay.nair@example.com | Marketing | 50000.00 | 2020-04-19 3 | Arjun | Verma | arjun.verma@example.com | IT | 71000.00 | 2021-06-01 1 | Raj | Sharma | raj.sharma@example.com | IT | -52000.00 | 2020-01-15 2 | Priya | Singh | priya.singh@example.com | HR | 0.00 | 2019-03-22 (10 rows)