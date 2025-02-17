-- STORED ROUTINE
-- An sql statement
-- or a
-- set of sql statement that can be stored on database server which can be call no. of time
 -- Types of stored routine
--  1. stored procedure
-- 2. user defined functions
 -- STORED PROCEDURE
-- set of sql statement
-- and procedural logic that can
-- perform operations such as inserting,
--         updating,
--         deleting
-- and querying data. To
-- update something in data you hav to write big big
-- update querry so this is the alternative
-- for that.
 -- run it once then

CREATE OR REPLACE PROCEDURE update_emp_salary(p_employee_id INT, p_new_salary NUMERIC) LANGUAGE plpgsql AS $$

BEGIN

    UPDATE employees

    SET salary = p_new_salary

    WHERE emp_id = p_employee_id;

END;

$$;

-- only have to write this much to update now
call update_emp_salary(3,71000);

-- .........................................
-- USER DEFINED FUNCTIONS
-- Custom functions created by the user to perform specific operations and return a value.

SELECT e.emp_id,
       e.fname,
       e.salary
FROM employees e
WHERE e.dept = 'HR'
  AND e.salary =
    (SELECT MAX(emp.salary)
     FROM employees emp
     WHERE emp.dept = 'HR' );

--  CREATE CUSTOME FUNCTION BY WRITTING THIS QUERY THEN LATER YOU CAN USUALLY do it easily

CREATE OR REPLACE FUNCTION dept_max_sal_emp1(dept_name VARCHAR) RETURNS TABLE(emp_id INT, fname VARCHAR, salary NUMERIC) AS $$

BEGIN

    RETURN QUERY

    SELECT

        e.emp_id,  e.fname, e.salary

    FROM

        employees e

    WHERE

        e.dept = dept_name

        AND e.salary = (

            SELECT MAX(emp.salary)

            FROM employees emp

            WHERE emp.dept = dept_name

        );

END;

$$ LANGUAGE plpgsql;

-- querry to write after it

select *
FROM dept_max_sal_emp1('HR')