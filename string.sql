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