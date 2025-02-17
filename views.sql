-- we use views to keep querries stored
-- for examplr you have run join querry on two table now you want that table to be stored somewhere so that you dont have to write full querry again and again so you use create views

create view billing_info as
select c.cust_name,
       p.p_name,
       p.price,
       oi.quantity,
       o.ord_date,
       (oi.quantity*p.price) as total_price
from order_items oi
join products p on oi.p_id=p.p_id
join orders o on o.ord_id=oi.ord_id
join customers c on o.cust_id=c.cust_id;

-- so this is the way to sotre

select *
from billing_info -- group by in billling

select p_name,
       sum(total_price)
from billing_info
group by p_name;

-- along with groupby you can not use where you have to use having

select p_name,
       sum(total_price)
from billing_info
group by p_name
having sum(total_price)>1500;

p_name | sum --------+-----------
 Cable | 1750.00 Laptop | 110000.00 (2 rows) --  ROLLUP
-- IF you want to print total in the last then :
projectdb=# select coalesce(p_name,'Total'), sum(total_price) as amount from
 billing_info
group by rollup(p_name)
order by amount;