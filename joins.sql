-- join operation is used to combine rows from two or more tables based on a related column between them.
 -- types of join
-- 1. cross join--every row from one table is combined with every row from another table (gives all possible columns)
 storedb=# select * from customers cross join orders;
 cust_id | cust_name | ord_id | ord_date | price | cust_id ---------+-----------+--------+------------+--------+---------
 1 | Raju | 1 | 2024-01-01 | 250.00 | 1 2 | Sham | 1 | 2024-01-01 | 250.00 | 1 3 | Paul | 1 | 2024-01-01 | 250.00 | 1 4 | Alex | 1 | 2024-01-01 | 250.00 | 1 1 | Raju | 2 | 2024-01-15 | 300.00 | 1 2 | Sham | 2 | 2024-01-15 | 300.00 | 1 3 | Paul | 2 | 2024-01-15 | 300.00 | 1 4 | Alex | 2 | 2024-01-15 | 300.00 | 1 1 | Raju | 3 | 2024-02-01 | 150.00 | 2 2 | Sham | 3 | 2024-02-01 | 150.00 | 2 3 | Paul | 3 | 2024-02-01 | 150.00 | 2 4 | Alex | 3 | 2024-02-01 | 150.00 | 2 1 | Raju | 4 | 2024-03-01 | 450.00 | 3 2 | Sham | 4 | 2024-03-01 | 450.00 | 3 3 | Paul | 4 | 2024-03-01 | 450.00 | 3 4 | Alex | 4 | 2024-03-01 | 450.00 | 3 1 | Raju | 5 | 2024-04-04 | 550.00 | 2 2 | Sham | 5 | 2024-04-04 | 550.00 | 2 3 | Paul | 5 | 2024-04-04 | 550.00 | 2 4 | Alex | 5 | 2024-04-04 | 550.00 | 2 (20 rows);

-- 2. inner join--returns only the rows where there is a match between the specified columns in both the left(or first) and right(or second) tables.
storedb=# select * from customers c
storedb-#
inner join storedb-# orders o storedb-# on c.cust_id=o.cust_id;

cust_id | cust_name | ord_id | ord_date | price | cust_id ---------+-----------+--------+------------+--------+---------
 1 | Raju | 1 | 2024-01-01 | 250.00 | 1 1 | Raju | 2 | 2024-01-15 | 300.00 | 1 2 | Sham | 3 | 2024-02-01 | 150.00 | 2 3 | Paul | 4 | 2024-03-01 | 450.00 | 3 2 | Sham | 5 | 2024-04-04 | 550.00 | 2 (5 rows) ;

-- along with group by
storedb=# select c.cust_name , count(o.ord_id) from customers c inner join orders o
 on c.cust_id=o.cust_id
group by cust_name;

cust_name | count -----------+-------
 Paul | 1 Sham | 2 Raju | 2 (3 rows) ;

-- on the basis of sum
storedb=# select c.cust_name ,sum(o.price) from customers c inner join orders o on
c.cust_id=o.cust_id
group by cust_name;

cust_name | sum -----------+--------
 Paul | 450.00 Sham | 700.00 Raju | 550.00 (3 rows);

-- inner join is like only intersection of a and b in venn diagram it only shows intersected part on all info for example in above table we cannot see alex as he had not bought any book but can see other as they exist as well as they have bough the book.
--
-- 3. left join-- returns all rows from the left(or first) table and the matching rowsa from the right (or second) table.
-- in venn diagram we have a and b so full a part is coverred full circle including some overlapped b part ie full a.
storedb=# select * from customers c left join orders o on c.cust_id=o.cust_id;
 cust_id | cust_name | ord_id | ord_date | price | cust_id ---------+-----------+--------+------------+--------+---------
 1 | Raju | 1 | 2024-01-01 | 250.00 | 1 1 | Raju | 2 | 2024-01-15 | 300.00 | 1 2 | Sham | 3 | 2024-02-01 | 150.00 | 2 3 | Paul | 4 | 2024-03-01 | 450.00 | 3 2 | Sham | 5 | 2024-04-04 | 550.00 | 2 4 | Alex | | | | (6 rows) ;

-- 4. right join
-- display right side full data
storedb=# select * from customers c right join orders o on c.cust_id=o.cust_id;
 cust_id | cust_name | ord_id | ord_date | price | cust_id ---------+-----------+--------+------------+--------+---------
 1 | Raju | 1 | 2024-01-01 | 250.00 | 1 1 | Raju | 2 | 2024-01-15 | 300.00 | 1 2 | Sham | 3 | 2024-02-01 | 150.00 | 2 3 | Paul | 4 | 2024-03-01 | 450.00 | 3 2 | Sham | 5 | 2024-04-04 | 550.00 | 2 (5 rows);