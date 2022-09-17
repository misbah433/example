#1st exercise solution

select o.order_id, first_name, last_name, customer_id from customers c
join orders o
using(customer_id);

#solution no.2

select product_id, name, oi.quantity, oi.unit_price from products p
join order_items oi
using(product_id);

# solution # 3

select order_id, order_date, c.first_name, c.last_name,os.name from orders o
join customers c
using (customer_id)
join order_statuses os
on order_status_id = status;

#solution no. 4

use products;

select customer_id, first_name, points, 'bronze' as status from customers where points<1000
union
select customer_id, first_name, points, 'silver' as status from customers where points between 1000 and 2000
union
select customer_id, first_name, points, 'gold' as status from customers where points > 3000;