use newdb;

show tables;

select * from customer;

select * from sales;
 
 # Inner Join
select customer.CustomerID,customer.CustomerName,customer.Phone,sales.order_quantity,sales.order_price,sales.order_date 
from customer
inner join sales on customer.CustomerID = sales.CustomerID order by CustomerID;

# Left Join
select customer.CustomerName,sales.order_id 
from customer
left join sales on customer.CustomerID = sales.CustomerID;

# Right Join
select sales.order_id,customer.Country,sales.order_date
from customer
right join sales on customer.CustomerID = sales.CustomerID;

# Full Join
select distinct customer.Country,customer.CustomerName,customer.LastName
from sales
full join customer;

# Cross Join
select customer.CustomerID,customer.CustomerName,customer.Phone,sales.order_quantity,sales.order_price,sales.order_date 
from customer
cross join sales on customer.CustomerID = sales.CustomerID 
where customer.Age > 22 order by CustomerID;
