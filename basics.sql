to open: psql -U postgres ;

-- dont use semicolon in above line
postgres=# create database
postgres-# test;

postgres=# drop database test;

DROP DATABASE postgres=# \l
 List of databases Name | Owner | Encoding | Locale Provider | Collate | Ctype | ICU Locale | ICU Rules | Access privileges -----------+----------+----------+-----------------+--------------------+--------------------+------------+-----------+-----------------------
 instadb | postgres | UTF8 | libc | English_India.1252 | English_India.1252 | | | postgres | postgres | UTF8 | libc | English_India.1252 | English_India.1252 | | | template0 | postgres | UTF8 | libc | English_India.1252 | English_India.1252 | | | =c/postgres + | | | | | | | | postgres=CTc/postgres template1 | postgres | UTF8 | libc | English_India.1252 | English_India.1252 | | | =c/postgres + | | | | | | | | postgres=CTc/postgres test | postgres | UTF8 | libc | English_India.1252 | English_India.1252 | | | (5 rows)--
 postgres=# \c instadb;
 You are now connected to database "instadb" as user "postgres". instadb=#