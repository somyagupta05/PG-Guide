CREATE TABLE person (id SERIAL PRIMARY KEY,
                                       name VARCHAR(50),
                                            city VARCHAR(50));


INSERT INTO person (id, name, city)
VALUES (102,
        'Sham',
        'Mumbai'), (103,
                    'Paul',
                    'Chennai'), (101,
                                 'Raju',
                                 'Bangalore');


SELECT *
FROM person;

