-- Exercise 1: Select all columns from the Customers table.

show databases;
use mysql;
CREATE table customer
(
CustomerId int,
FirstName varchar(35),
LastName varchar(255),
Email varchar(255),
PhoneNum varchar(10)
);

insert into Customer values(1,'Luiza','Bravo','luizabravo@gmail.com','7950791487');
insert into Customer 
values(2,'James','Smith','js92@outlook.com','456878931');
insert into Customer values(3,'Cristina','Lane','clane@gmail.com', null);
insert into Customer values(4,'Stephanie','Garcia',null,'236982567');
insert into Customer values(5,'Milton','Stevens','miltonstevens@cambrige.co.uk',null);
insert into Customer values(6,'Anna','Lume','annal@gmail.com','569871235');

SELECT * FROM Customer;


-- Exercise 2: Select the FirstName and LastName of all customers in the Customers table.

SELECT FirstName, LastName from Customer;


-- Exercise 3: Find all customers with the LastName of 'Smith'.

SELECT * FROM customer 
WHERE LastName like 'Smith';


-- Exercise 4: Select all products with a price greater than 20.

use mysql;
CREATE table products
(
ProductId int,
ProductName varchar(35),
Price decimal(10)
);

insert into products values(1,'Soap','1.50');
insert into products values(2,'Broom','5');
insert into products values(3,'Gloves','10');
insert into products values(4,'Shirt','19.99');
insert into products values(5,'Bucket','3');
insert into products values(6,'Ring chain','2');

SELECT * FROM products 
WHERE Price > '20';


-- Exercise 5: List all orders in descending order of the total amount.

use mysql;
CREATE table orders
(
OrderId int,
CustomerId int,
OrderDate date(10),
TotalAmount varchar(10)
);

insert into orders values(1,2,'10/04/2024','15');
insert into orders values(2,5,'10/04/2024','52');
insert into orders values(3,1,'11/04/2024','120');
insert into orders values(4,2,'12/04/2024','150');
insert into orders values(5,3,'13/04/2024','5');
insert into orders values(6,6,'13/04/2024','43');
insert into orders values(7,5,'14/04/2024','38');


SELECT * FROM orders
ORDER BY TotalAmount DESC


-- Exercise 6: Find the first 5 customers when sorted alphabetically by FirstName.

SELECT * FROM customer where CustomerId <= 5;


-- Exercise 7: Select the ProductName and Price for all products with Price less than 50.

SELECT ProductName, Price FROM products 
WHERE Price < '50';


-- Exercise 8: Show the 3 most expensive products available.

SELECT * FROM products
ORDER BY Price DESC
limit 3


-- Exercise 9: Retrieve the order details for orders with a TotalAmount between 50 and 100.

SELECT * FROM orders
WHERE TotalAmount <= 100 and TotalAmount >= 50
ORDER BY TotalAmount DESC


-- Exercise 10: List the first 2 orders from the Orders table sorted by OrderDate in ascending order.

SELECT * FROM orders
WHERE TotalAmount <= 100 and TotalAmount >= 50
ORDER BY TotalAmount DESC


-- Exercise 11: Find all products with 'shirt' in the ProductName.

SELECT * FROM products
WHERE ProductName like 'shirt'


-- Exercise 12: Select all customers with an email address ending in '.com'.

SELECT * FROM customers
WHERE Email= '%.com'


-- Exercise 13: Display all orders with an OrderDate of today's date.

SELECT * FROM orders
WHERE OrderDate = '24/04/2024'


-- Exercise 14: List all products with Price in the range of 10 to 30, inclusive.

SELECT * FROM products
WHERE Price <= 30 and Price >= 10


-- Exercise 15: Get the last 3 orders made by CustomerID 1 when sorted by OrderDate.

SELECT * FROM orders
WHERE CustomerId = 1
ORDER BY OrderDate DESC
limit 3


-- Exercise 16: Find all products whose Price is not 19.99.

SELECT * FROM products
WHERE Price != 19.99


-- Exercise 17: Retrieve all orders with a TotalAmount over 75 in ascending order of TotalAmount.

SELECT * FROM products
WHERE TotalAmount >= 75
ORDER BY TotalAmount ASC


-- Exercise 18: Select the FirstName and Email of customers without a phone number listed.

SELECT FirstName, Email FROM customers
WHERE PhoneNum = null


-- Exercise 19: Show the total number of products available in the Products table.

SELECT count(ProductName) FROM products


-- Exercise 20: List the names of customers who have made more than one order.

SELECT count(*) as orderCount, customer.FirstName, customer.LastName
 FROM Customers
 JOIN Orders ON customer.CustomerID = orders.CustomerID
GROUP BY customer.CustomerID
HAVING orderCount > 1;


