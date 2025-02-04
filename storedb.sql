-- relationship

create table customers (cust_id serial primary key, cust_name varchar(100) not null);


create table orders(ord_id serial primary key, ord_date date not null, price numeric not null, cust_id integer not null,
                    foreign key (cust_id) references customers(cust_id));


insert into customers (cust_name)
values ('Raju'),('Sham'),('Paul'),('Alex');


insert into orders(ord_date,cust_id,price)
values ('2024-01-01',
        1,
        250.00), ('2024-01-15',
                  1,
                  300.00), ('2024-02-01',
                            2,
                            150.00), ('2024-03-01',
                                      3,
                                      450.00), ('2024-04-04',
                                                2,
                                                550.00);

storedb=# select * from customers;
 cust_id | cust_name ---------+-----------
 1 | Raju 2 | Sham 3 | Paul 4 | Alex (4 rows) ;

storedb=# select * from orders;
 ord_id | ord_date | price | cust_id --------+------------+--------+---------
 1 | 2024-01-01 | 250.00 | 1 2 | 2024-01-15 | 300.00 | 1 3 | 2024-02-01 | 150.00 | 2 4 | 2024-03-01 | 450.00 | 3 5 | 2024-04-04 | 550.00 | 2 (5 rows);

storedb=# \d orders;
 Table "public.orders" Column | Type | Collation | Nullable | Default ----------+---------+-----------+----------+----------------------------------------
 ord_id | integer | | not null | nextval('orders_ord_id_seq'::regclass) ord_date | date | | not null | price | numeric | | not null | cust_id | integer | | not null | Indexes: "orders_pkey" PRIMARY KEY,
                                                                                                                                                                                                      btree (ord_id)
Foreign-key constraints: "orders_cust_id_fkey"
FOREIGN KEY (cust_id) REFERENCES customers(cust_id);

storedb=# \d customers;
 Table "public.customers" Column | Type | Collation | Nullable | Default -----------+------------------------+-----------+----------+--------------------------------------------
 cust_id | integer | | not null | nextval('customers_cust_id_seq'::regclass) cust_name | character varying(100) | | not null | Indexes: "customers_pkey" PRIMARY KEY,
                                                                                                                                                                 btree (cust_id) Referenced by: TABLE "orders" CONSTRAINT "orders_cust_id_fkey"
FOREIGN KEY (cust_id) REFERENCES customers(cust_id)