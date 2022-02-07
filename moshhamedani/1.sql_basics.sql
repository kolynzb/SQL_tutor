USE sql_store ; -- specifies database to use 

--Select and where  clause

select * from customers ; -- this returns all columns from the cutomers table 
select city from customers where customer_id = 1; -- this returns city column from the cutomers table  whose id is 1
select city from customers where customer_id = 1 order by first_name; --this orders them by the first name column
select points,points * 10 from customers where customer_id; --this creates a new column for the arithmetic 
select last_name, first_name, points, points*10 + 100 from customers ; --this arithmetic expression would use bodmas
select distinct state from customers ; --this returns the state column with out duplicates 
select * from Customers where state = "VA"; -- WHEN quering textual values we use qoutes around them 
select * from Customers where birth_date > '1990-01-01'; --this is the date format in sql 
select * from orders where order_date >='2019-01-01'; 


-- AND OR & NOT operators are used to combine multiple conditions 
select * from orders where order_date >='2019-01-01' and points > 1000 ;  
select * from orders where not order_date >='2019-01-01' and points > 1000 ;  
select * from orders where order_date >='2019-01-01' or  points > 1000 and state = 'VA' ;  
select * from orders where order_date >='2019-01-01' or  (points > 1000 and state = 'VA') ;  -- use can use brackets to override the precedence 
select * from orders where order_id = 6 AND unit_price * quantity > 30 ; -- arithmatic operators also work in this 

--in operator
select * from customers  where state = 'VA' or state = 'GA' or state = 'FL'; --this can be written like this 
select * from customers  where state IN ('GA', 'FL' ,'VA'); -- GETS all customers in this state 

--Between operator 
select * from customers  where points >= 1000 and points <= 3000; --can be rewritten with between operator
select * from customers  where points between 1000 and 3000;

--Like operator 
select * from customers where last_name LIKE "b%"; -- WHERE cutomers name starts with b
select * from customers where last_name LIKE "%b"; -- WHERE cutomers name ends with b
select * from customers where last_name LIKE "%b%"; -- WHERE cutomers name  with b in it
select * from customers where last_name LIKE "_y"; -- WHERE cutomers name  matches this pattern so the underscore represents a character
select * from customers where last_name LIKE "c_____s";
select * from customers where  address IN('TRAIL' , 'AVENUE') AND tel_number LIKE '%9'; -- customer whose address is either TRAIL or AVENUE and whose phone number ends with 9


--REGEXP operator 
select * from customers where  last_name REGEXP 'pattern';

--IS NULL operator
select * from customers where phone is null;


--ORDER BY clause 
select * from customers order by last_name DESC; -- sorting in descending order
select first_name, last_name from customers order by 1 ,2; --this will sort by lastname and first name 
select * from order_items where order_id = 2 order by quantity * unit_price desc ; 

--Limit clause 
select * from customers limit 3 -- with a limit of 3
select * from customers limit 6,3 -- skip first 6 and bring the first 6
select * from customers order by points desc limit 3; -- most loyal customers


