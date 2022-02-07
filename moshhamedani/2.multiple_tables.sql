--query two tables at the same time with joins 
-- the inner  key word is optional and the on keyword equaties two columns 
select * from orders inner join customers on  orders.customer_id = customers.customer_id;
select order_id, customer_id, first_name, last_name from orders join customers on orders.customer_id = customers.customer_id;