-- ---INNER JOINS---
select o.order_id,c.first_name,c.last_name,c.country,c.email,o.order_date
from customers c
inner join orders o
on c.customer_id = o.customer_id; 

select o.order_id,p.name as product_name,oi.unit_price
from orders o
inner join order_items oi on o.order_id = oi.order_id
inner join products p on oi.product_id =p.product_id;

SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    SUM(oi.quantity * oi.unit_price) AS order_total
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id
INNER JOIN order_items oi
    ON o.order_id = oi.order_id
WHERE o.status = 'PAID'
GROUP BY
    o.order_id,
    c.first_name,
    c.last_name
ORDER BY order_total DESC;

select * from customers;
select * from orders;
-- --Left JOINS---
select c.first_name,c.country,coalesce(o.order_id, 0),o.order_date,coalesce(o.status,0)
from customers c
left join orders o
on c.customer_id = o.customer_id;

 select p.name as product_name, sum(oi.quantity) as total_sold
 from products p 
 left join order_items oi ON p.product_id = oi.product_id
 group by p.name ;
 ---------------------------------
 
 SELECT * FROM customers;
 select * from orders;
 select * from products;
 select * from order_items;
 
--  ---RIGHT JOIN---
select o.order_id,o.order_date,c.first_name,c.last_name
from customers c
right join orders o 
on c.customer_id = o.customer_id ;

select o.order_id,o.order_date,oi.order_item_id,oi.unit_price
from orders o
right join order_items oi
on o.order_id = oi.order_id;

-- ---FULL OUTER JOIN ---
select c.first_name,c.last_name,o.order_id,o.order_date
from customers c
left join orders o
on c.customer_id = o.customer_id

union

select c.first_name,c.last_name,o.order_id,o.order_date
from  customers c
right join orders o 
on c.customer_id = o.customer_id;

-- -----Cross join ---
select c.first_name , p.name as product_name 
from customers c
cross join products  p
limit  10;

select a.first_name as customer1,b.first_name as customer2 , a.city,a.country
from customers a
join customers b on a.city = b.city 
where a.customer_id <b.customer_id;