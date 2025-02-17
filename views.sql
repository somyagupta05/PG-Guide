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
from billing_info