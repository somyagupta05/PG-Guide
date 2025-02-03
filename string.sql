-- concat, concat_ws
-- substr
-- left, right
-- length
-- upper, lower
-- trim,ltrim,rtrim
-- replace
-- position
-- string_agg
-- ...............................
-- ..................................
-- concat
bank=# select concat('hello','world');
 concat ------------
 helloworld (1 row) ;

-- concat lname and fname
bank=# select concat(fname,lname) from employees;
 concat -------------
 RajSharma PriyaSingh ArjunVerma SumanPatel KavitaRao AmitGupta NehaDesai RahulKumar AnjaliMehta VijayNair (10 rows) ;

--  concat with alias
bank=# select concat(fname,lname) from employees;
 concat -------------
 RajSharma PriyaSingh ArjunVerma SumanPatel KavitaRao AmitGupta NehaDesai RahulKumar AnjaliMehta VijayNair (10 rows);

--  ...... multiple column with concat
bank=# select emp_id,concat(fname,lname),dept as Fullname from employees;
 emp_id | concat | fullname --------+-------------+-----------
 1 | RajSharma | IT 2 | PriyaSingh | HR 3 | ArjunVerma | IT 4 | SumanPatel | Finance 5 | KavitaRao | HR 6 | AmitGupta | Marketing 7 | NehaDesai | IT 8 | RahulKumar | IT 9 | AnjaliMehta | Finance 10 | VijayNair | Marketing (10 rows) ;

--  space between fname and lastname
bank=# select emp_id,concat(fname,' ',lname),dept as Fullname from employees
;

emp_id | concat | fullname --------+--------------+-----------
 1 | Raj Sharma | IT 2 | Priya Singh | HR 3 | Arjun Verma | IT 4 | Suman Patel | Finance 5 | Kavita Rao | HR 6 | Amit Gupta | Marketing 7 | Neha Desai | IT 8 | Rahul Kumar | IT 9 | Anjali Mehta | Finance 10 | Vijay Nair | Marketing (10 rows);

-- but this is not a good practice so we use concat_ws;
bank=# select concat_ws(':','one','two','three');
 concat_ws ---------------
 one:two:three;

--  ......
bank=# select emp_id,concat_ws(' ',fname,lname,salary),dept as Fullname from
 employees;

emp_id | concat_ws | fullname --------+-----------------------+-----------
 1 | Raj Sharma 50000.00 | IT 2 | Priya Singh 45000.00 | HR 3 | Arjun Verma 55000.00 | IT 4 | Suman Patel 60000.00 | Finance 5 | Kavita Rao 47000.00 | HR 6 | Amit Gupta 52000.00 | Marketing 7 | Neha Desai 48000.00 | IT 8 | Rahul Kumar 53000.00 | IT 9 | Anjali Mehta 61000.00 | Finance 10 | Vijay Nair 50000.00 | Marketing (10 rows);

-- ......................
-- ......................
--  SUBSTRING
 bank=# select substr('hello world',1,4);
 substr --------
 hell (1 row);

bank=# select substr('hello world',1,5);
 substr --------
 hello (1 row);

-- space is also include
bank=# select substr('hello world',1,6);
 substr --------
 hello (1 row);