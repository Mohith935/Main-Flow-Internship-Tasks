create database newdb;

use newdb;

create table Customer( CustomerID int primary key,
CustomerName varchar(50),
LastName varchar(50),
Country varchar(50),
Age int,
Phone int(11)
);

insert into Customer 
values(1, 'Shubham', 'Thakur', 'India', '23', '674646616'),
(2, 'Aman ', 'Chopra', 'Australia','21','438710481'),
(3, 'Naveen', 'Tulasi', 'Sri lanka','24','681781937'),
(4, 'Aditya', 'Arpan', 'Austria','21','918781233'),
(5, 'Nishant. Salchichas S.A.', 'Jain', 'Spain','22','919814131');

select * from Customer;

select CustomerID,CustomerName,Country
from Customer;

select distinct CustomerName
from Customer;

select * from Customer
order by Age;

select count(*) as Number_of_customers
from Customer;

alter table Customer
add Email varchar(50);

alter table Customer
drop column Email;

truncate table Customer;

drop table Customer;

drop database newdb;
