CREATE DATABASE IF NOT EXISTS springs24;
USE springs24;

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;
SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE customers (
 customer_id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 email VARCHAR(100) UNIQUE,
 city VARCHAR(50),
 country VARCHAR(50),
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE products (
 product_id INT PRIMARY KEY AUTO_INCREMENT,
 name VARCHAR(100) NOT NULL,
 category VARCHAR(50) NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 in_stock INT NOT NULL DEFAULT 0
);

CREATE TABLE orders (
 order_id INT PRIMARY KEY AUTO_INCREMENT,
 customer_id INT NOT NULL,
 order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 status ENUM('PENDING','PAID','CANCELLED') DEFAULT 'PENDING',
 payment_method ENUM('CARD','CASH','TRANSFER') NULL,
 shipping_city VARCHAR(50),
 CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id)
 REFERENCES customers(customer_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE order_items (
 order_item_id INT PRIMARY KEY AUTO_INCREMENT,
 order_id INT NOT NULL,
 product_id INT NOT NULL,
 quantity INT NOT NULL,
 unit_price DECIMAL(10,2) NOT NULL,
 CONSTRAINT fk_items_order FOREIGN KEY (order_id)
 REFERENCES orders(order_id) ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT fk_items_product FOREIGN KEY (product_id)
 REFERENCES products(product_id) ON DELETE RESTRICT ON UPDATE CASCADE
);

INSERT INTO customers (customer_id,first_name,last_name,email,city,country,created_at) VALUES
(1,'Ayesha','Khan','ayesha.khan@example.com','Sharjah','UAE','2025-08-20 09:15:00'),
(2,'Ali','Raza','ali.raza@example.com','Karachi','Pakistan','2025-08-20 10:00:00'),
(3,'Zara','Malik','zara.malik@example.com','Dubai','UAE','2025-08-21 11:30:00'),
(4,'Omar','Hadi','omar.hadi@example.com','Chakwal','Pakistan','2025-08-21 14:05:00'),
(5,'Noor','Fatima','noor.fatima@example.com','Abu Dhabi','UAE','2025-08-22 16:20:00'),
(6,'Bilal','Ahmed','bilal.ahmed@example.com','Multan','Pakistan','2025-08-22 17:45:00'),
(7,'Hadiya','Gul','hadiya.gul@example.com','Lahore','Pakistan','2025-08-23 09:50:00'),
(8,'Saad','Hussain','saad.hussain@example.com','Islamabad','Pakistan','2025-08-23 10:40:00'),
(9,'Mariam','Siddiqui','mariam.siddiqui@example.com','Ajman','UAE','2025-08-24 12:10:00'),
(10,'Fahad','Sheikh','fahad.sheikh@example.com','Kallar Kahar','Pakistan','2025-08-24 13:25:00'),
(11,'Amal','Noor','amal.noor@example.com','Ras Al Khaimah','UAE','2025-08-25 14:55:00'),
(12,'Daniyal','Qureshi','daniyal.qureshi@example.com','Dubai','UAE','2025-08-25 15:30:00');

INSERT INTO products (product_id,name,category,price,in_stock) VALUES
(1,'iPhone 15','Phones',3800.00,15),
(2,'Galaxy S24','Phones',3400.00,12),
(3,'MacBook Air','Laptops',5200.00,8),
(4,'ThinkPad E14','Laptops',4200.00,6),
(5,'AirPods Pro','Accessories',900.00,25),
(6,'USB-C Cable','Accessories',35.00,200),
(7,'Monitor 27"','Accessories',850.00,10),
(8,'iPad 10','Tablets',1400.00,9),
(9,'Apple Watch SE','Wearables',1100.00,14),
(10,'Power Bank 20k','Accessories',120.00,60);

INSERT INTO orders (order_id,customer_id,order_date,status,payment_method,shipping_city) VALUES
(1,1,'2025-08-25 10:00:00','PAID','CARD','Sharjah'),
(2,2,'2025-08-26 15:30:00','PAID','CASH','Karachi'),
(3,1,'2025-08-27 11:45:00','PENDING','CARD','Sharjah'),
(4,3,'2025-08-27 12:10:00','CANCELLED','CARD','Dubai'),
(5,4,'2025-08-28 16:05:00','PAID','TRANSFER','Chakwal'),
(6,5,'2025-08-28 18:20:00','PAID','CARD','Abu Dhabi'),
(7,6,'2025-08-29 09:35:00','PAID','CASH','Multan'),
(8,7,'2025-08-29 11:00:00','PAID','CARD','Lahore'),
(9,8,'2025-08-30 13:15:00','PENDING','TRANSFER','Islamabad'),
(10,9,'2025-08-30 16:40:00','PAID','CARD','Ajman'),
(11,10,'2025-09-01 10:05:00','PAID','CASH','Kallar Kahar'),
(12,12,'2025-09-02 14:25:00','PAID','TRANSFER','Dubai');

INSERT INTO order_items (order_item_id,order_id,product_id,quantity,unit_price) VALUES
(1,1,1,1,3800.00),(2,1,5,1,900.00),(3,2,2,1,3400.00),(4,2,6,2,35.00),
(5,3,8,1,1400.00),(6,4,3,1,5200.00),(7,5,4,1,4200.00),(8,5,7,1,850.00),
(9,6,9,1,1100.00),(10,6,10,1,120.00),(11,7,6,3,35.00),(12,7,5,1,900.00),
(13,8,8,2,1400.00),(14,9,1,1,3800.00),(15,10,5,2,900.00),(16,10,6,5,35.00),
(17,11,2,1,3400.00),(18,11,10,1,120.00),(19,12,3,1,5200.00),(20,12,6,2,35.00);

SHOW TABLES;
SELECT COUNT(*) AS total_customers FROM customers;
SELECT COUNT(*) AS total_products FROM products;
SELECT COUNT(*) AS total_orders FROM orders;
SELECT COUNT(*) AS total_order_items FROM order_items;

SELECT country, COUNT(*) AS total_customers
FROM customers
GROUP BY country
ORDER BY total_customers DESC;
select * from customers;
select * from orders;
select * from products;
insert into customers (first_name,last_name,email,city,country) values 
('sadeeq','khan','sadeeq@gmail.com','peshawar','pakistan');
insert into orders (customer_id,order_date,status,payment_method,shipping_city) values
('13','2025-09-03','paid','card','peshawar');
update customers
set email = 'khan@gmail.com',country = 'uae'
where customer_id = '13';
update customers
set email = 'jan@gmail.com', country = 'ksa'
where customer_id = '12';

-- ----DDL ----
alter table customers
add office_address varchar(150);

update customers
set office_address = "peshawar"
where customer_id = 1;
select * from customers;

-- ----Aggregate---------
select 
count(*), 
sum(in_stock)
from products;

alter table customers
drop column office_address;
select * from orders;
select * from products;

select 
     avg(price),
     min(price),
     max(price)
from products;

select * from orders;
select 
     order_id,
     sum(customer_id)
from orders
group by order_id 
order by order_id;

select * from products;

select 
product_id,
sum(in_stock)
from products
group by product_id
order by sum(in_stock) desc;

select distinct country  from customers ;
select  distinct in_stock from products;

select * from products;
select * from orders;
select * from customers;
show tables;

     

     
