--query two tables at the same time with joins 
-- the inner  key word is optional and the on keyword equaties two columns 
select * from orders inner join customers on  orders.customer_id = customers.customer_id;
select order_id, customer_id, first_name, last_name from orders join customers on orders.customer_id = customers.customer_id; -- this would give an error if theer e two columns that are the same and not distinguished 
select order_id, orders.customer_id, first_name, last_name from orders join customers on orders.customer_id = customers.customer_id;
-- using abbrieviated names if ue use this aias name use it every where 
select order_id, o.customer_id, customer_id, first_name, last_name from orders o join customers c on o.customer_id = c.customer_id;
select * from order_items oi join products p on oi.product_id = p.product_id;
select oi.product_id,p.product_id,quantity,unit_price, from order_items oi join products p on oi.product_id = p.product_id;