USE sql_store ; -- specifies database to use 
select * from customers ; -- this returns all columns from the cutomers table 
select city from customers where customer_id = 1; -- this returns city column from the cutomers table  whose id is 1
select city from customers where customer_id = 1 order by first_name; --this orders them by the first name column
select points,points * 10 from customers where customer_id --