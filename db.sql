--CREATE A DATABASE
CREATE DATABASE practice;
-- adding a table
CREATE TABLE products(
    id INT,
    productName VARCHAR(50),
    Price INT,
    on_sale boolean
);
-- adding a COLUMN
AlLTER TABLE products ADD COLUMN featured boolean;
-- delete a COLUMN
AlLTER TABLE products DROP COLUMN featured;
--delete a table from
DROP TABLE products
--delete a dbo from
DROP DATABASE practice;


--yelp database
CREATE DATABASE yelp;

CREATE TABLE restaurants(
    id BIGSERIAL NOT NULL PRIMARY KEY, 
    name VARCHAR(50) NOT NULL,
    location VARCHAR(50) NOT NULL,
    price_range INT NOT NULL CHECK(price_range >= 1 and price_range <= 5)
)

--inserting data into a table 
INSERT INTO restaurants (id, name, location,price_range) VALUES (123,'mcdonalds','new yorks',3);
--viewing data in the table
SELECT * FROM restaurants;
--viewing data in the specific  COLUMN
SELECT name,location,price_range FROM restaurant;