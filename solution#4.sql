#solution no. 4

use products;

select customer_id, first_name, points, 'bronze' as status from customers where points<1000
union
select customer_id, first_name, points, 'silver' as status from customers where points between 1000 and 2000
union
select customer_id, first_name, points, 'gold' as status from customers where points > 3000;