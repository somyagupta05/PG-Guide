CREATE TABLE customers (cust_id SERIAL PRIMARY KEY,
                                               cust_name VARCHAR(100) NOT NULL);


CREATE TABLE orders (ord_id SERIAL PRIMARY KEY,
                                           ord_date DATE NOT NULL,
                                                         cust_id INTEGER NOT NULL,
                     FOREIGN KEY (cust_id) REFERENCES customers(cust_id));


CREATE TABLE order_items (item_id SERIAL PRIMARY KEY,
                                                 ord_id INTEGER NOT NULL,
                                                                p_id INTEGER NOT NULL,
                                                                             quantity INTEGER NOT NULL,
                          FOREIGN KEY (ord_id) REFERENCES orders(ord_id),
                          FOREIGN KEY (p_id) REFERENCES products(p_id));


CREATE TABLE products (p_id SERIAL PRIMARY KEY,
                                           p_name VARCHAR(100) NOT NULL,
                                                               price NUMERIC NOT NULL);


INSERT INTO customers (cust_name)
VALUES ('Raju'), ('Sham'), ('Paul'), ('Alex');


INSERT INTO orders (ord_date, cust_id)
VALUES ('2024-01-01',
        1), -- Raju first order
 ('2024-02-01',
  2), -- Sham first order
 ('2024-03-01',
  3), -- Paul first order
 ('2024-04-04',
  2); -- Sham second order


INSERT INTO order_items (ord_id, p_id, quantity)
VALUES (1,
        1,
        1), -- Raju ordered 1 Laptop
 (1,
  4,
  2), -- Raju ordered 2 Cables
 (2,
  1,
  1), -- Sham ordered 1 Laptop
 (3,
  2,
  1), -- Paul ordered 1 Mouse
 (3,
  4,
  5), -- Paul ordered 5 Cables
 (4,
  3,
  1); -- Sham ordered 1 Keyboard


INSERT INTO products (p_name, price)
VALUES ('Laptop',
        55000.00), ('Mouse',
                    500), ('Keyboard',
                           800.00), ('Cable',
                                     250.00) ;

projectdb=# select * from order_items oi join products p on oi.p_id=p.p_id;
 item_id | ord_id | p_id | quantity | p_id | p_name | price ---------+--------+------+----------+------+----------+----------
 7 | 1 | 1 | 1 | 1 | Laptop | 55000.00 8 | 1 | 4 | 2 | 4 | Cable | 250.00 9 | 2 | 1 | 1 | 1 | Laptop | 55000.00 10 | 3 | 2 | 1 | 2 | Mouse | 500 11 | 3 | 4 | 5 | 4 | Cable | 250.00 12 | 4 | 3 | 1 | 3 | Keyboard | 800.00 (6 rows) ;

projectdb=# select c.cust_name,p.p_name,oi.quantity,o.ord_date from order_items oi join products p on oi.p_id=p.p_id join orders o on o.ord_id=oi.ord_id join customers c on o.cust_id=c.cust_id;
 cust_name | p_name | quantity | ord_date -----------+----------+----------+------------
 Raju | Laptop | 1 | 2024-01-01 Raju | Cable | 2 | 2024-01-01 Sham | Laptop | 1 | 2024-02-01 Paul | Mouse | 1 | 2024-03-01 Paul | Cable | 5 | 2024-03-01 Sham | Keyboard | 1 | 2024-04-04 (6 rows);

projectdb=# select c.cust_name,p.p_name,p.price,oi.quantity,o.ord_date,(oi.quantity*p.price) as total_price from order_items oi join products p on oi.p_id=p.p_id join orders o on o.ord_id=oi.ord_id join customers c on o.cust_id=c.cust_id;
 cust_name | p_name | price | quantity | ord_date | total_price -----------+----------+----------+----------+------------+-------------
 Raju | Laptop | 55000.00 | 1 | 2024-01-01 | 55000.00 Raju | Cable | 250.00 | 2 | 2024-01-01 | 500.00 Sham | Laptop | 55000.00 | 1 | 2024-02-01 | 55000.00 Paul | Mouse | 500 | 1 | 2024-03-01 | 500 Paul | Cable | 250.00 | 5 | 2024-03-01 | 1250.00 Sham | Keyboard | 800.00 | 1 | 2024-04-04 | 800.00 (6 rows);