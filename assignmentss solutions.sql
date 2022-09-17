#solution no.1:

select o.order_id, first_name, last_name, customer_id from customers c
join orders o
using(customer_id);

#solution no.2:

select product_id, name, oi.quantity, oi.unit_price from products p
join order_items oi
using(product_id);

# solution # 3:

select order_id, order_date, c.first_name, c.last_name,os.name from orders o
join customers c
using (customer_id)
join order_statuses os
on order_status_id = status;

#solution no. 4:

use products;

select customer_id, first_name, points, 'bronze' as status from customers where points<1000
union
select customer_id, first_name, points, 'silver' as status from customers where points between 1000 and 2000
union
select customer_id, first_name, points, 'gold' as status from customers where points > 3000;


#Exercise # 5:
use invoicing;

select p.date , p.invoice_id, p.amount, c.name , pm.name as 'Payment method'
from payment_methods pm
join payments p
on pm.payment_method_id = p.payment_method
join clients c
using(client_id);

#solution no. 6:

use store;

select order_date, order_id, c.first_name, sh.name as shipper, os.name from orders o
join customers c
using (customer_id)
join shippers sh 
using (shipper_id)
join order_statuses os
on os.order_status_id= o.status;


