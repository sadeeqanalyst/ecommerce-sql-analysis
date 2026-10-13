select 
sum(case when status = 'paid' then 1 else 0 end ) as paid_orders,
sum(case when status = 'unpaid' then 1 else 0 end ) as unapid_orders ,
sum(case when status = 'cancelled ' then 1 else 0 end ) as cancelled_orders
from orders;
select * from order_items;
select 
sum(case when o.payment_method = 'card' then oi.quantity * oi.unit_price else 0 end  ) as card_revenue,
sum(case when o.payment_method = 'cash' then oi.quantity * oi.unit_price else 0 end ) as cash_revenue,
sum(case when o.payment_method = 'transfer' then oi.quantity *oi.unit_price else 0 end  ) as transfer_revenue
 from orders o 
 join order_items  oi 
 on o.order_id=oi.order_id;