use newdb;

show tables;

-- View the structure of the tables
DESCRIBE customers;

DESCRIBE orders;

DESCRIBE products;

select * from customers;
select * from orders;
select * from products;

-- Total Number of Orders:
SELECT COUNT(*) AS total_orders FROM orders;

-- Average Order Value:
SELECT AVG(order_price) AS avg_order_value 
FROM orders;

-- Top Products by Sales:
SELECT p.product_name, SUM(o.order_quantity) AS total_quantity
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;

-- Most Frequently Bought Products:
SELECT p.product_name, COUNT(o.order_id) AS frequent_orders
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
ORDER BY frequent_orders DESC;

-- Peak Order Times (Hourly):
SELECT HOUR(order_date) AS hour_of_day, COUNT(order_id) AS total_orders
FROM orders
GROUP BY HOUR(order_date)
ORDER BY total_orders DESC;

-- Total Revenue:
SELECT SUM(o.order_quantity * p.product_price) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id;


