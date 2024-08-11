show databases;

use newdb;

CREATE TABLE sales (
  order_id int PRIMARY KEY,
  cust_name text NOT NULL,
  order_date date,
  order_price int,
  order_quantity int 
);

show tables;

insert into sales values
(1, 'smith', '8-Aug-2018', 300, 2),
(2, 'johnson', '5-sep-2018', 500, 3),
(3, 'baldin', '18-jul-2018', 250, 4),
(4, 'smith', '7-jun-2018', 700, 5),
(5, 'woods', '19-apr-2018', 200, 2),
(6, 'smith', '31-dec-2018', 300, 2),
(7, 'baldin', '13-mar-2018', 1000, 7);


select * from sales;

select sum(order_quantity) as TotalQuantity from sales;

select customer_name,sum(order_quantity) as TotalQuantity from sales
group by customer_name;

select avg(order_price) as AveragePrice from sales;

select customer_name,avg(order_price) as AveragePrice from sales
group by customer_name;

select max(order_price) as HighestPrice from sales;

select order_id,customer_name,max(order_price) as HighestPrice from sales
group by customer_name;

select min(order_price) as LowestPrice from sales;

select order_id,customer_name,min(order_price) as LowestPrice from sales
group by customer_name;

select count(customer_name) as Number_Of_Customers from sales;

select count(distinct customer_name) as Number_Of_Distinct_Customers from sales;

select customer_name,count(order_id) as Number_Of_Orders from sales
group by customer_name;
