select * from orders

select sum(num_of_item)as sum_of_items_completed
from orders
where status = 'Complete'

copy (select created_at, status, num_of_item
	 from orders) 
	 to 'D:\Kuliah\SEMESTER 6 (MSIB)\Final project Data\Python Analysis\Dataset final project\order_date.csv' 
	 with csv
	 
select o.order_id , num_of_item, sale_price
from orders as o join order_items as oi
on o.order_id = oi.order_id

copy (select o.order_id , num_of_item, sale_price
		from orders as o join order_items as oi
		on o.order_id = oi.order_id) 
	 to 'D:\Kuliah\SEMESTER 6 (MSIB)\Final project Data\Python Analysis\Dataset final project\order_merge.csv' 
	 with csv

	 
	 