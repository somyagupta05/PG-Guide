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