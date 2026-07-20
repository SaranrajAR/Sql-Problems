# Write your MySQL query statement below
select distinct p.product_id,
ifnull((select new_price 
from products 
where p.product_id=product_id and change_date<='2019-08-16'
order by change_date desc
limit 1),10) as price
from products p
