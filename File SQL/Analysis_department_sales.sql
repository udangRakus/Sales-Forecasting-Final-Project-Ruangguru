select * from inventory_items

select * from products
where id = 13606


select * from order_items
select count(product_id),status 
from order_items
where status = 'Cancelled'
group by status


-- show the product id where the status was cancelled and have sale price more than 500
select order_items.id, category, sale_price,status from order_items
join products on order_items.id = products.id 
where status = 'Cancelled' and sale_price > 500

-- show the product id where the status was cancelled
select order_items.id, category, status from order_items
join products on order_items.id = products.id 
where status = 'Cancelled'

-- to show the max sale price in every category product
select category, max(sale_price) from order_items
join products on order_items.id = products.id
where status = 'Cancelled'
group by category order by max(sale_price) desc

show timezone
select

select * from order_items(
select max(created_at), min(created_at) from order_items
select 
	(extract(month from created_at) || '-' || extract(year from created_at)) as created_at, 
	sum(sale_price)
from order_items
group by (extract(month from created_at) || '-' || extract(year from created_at))
order by (extract(month from created_at) || '-' || extract(year from created_at))

select date_trunc('month', created_at) as created_at, sum(sale_price) as sum_sale_price
from order_items
group by created_at
	
select 
	to_char(created_at, 'Mon') as mon,
	extract(year from created_at) as yyyy,
	sum(sale_price)
from order_items
group by 1,2
order by 2
	
select 
	to_char(created_at, 'd-Mon-YYYY') as month_year,
	sum(sale_price)
from order_items
group by 1

select cast(created_at as date), sum(sale_price) 
from order_items
group by 1
order by 1 
	
COPY
	(SELECT CAST(CREATED_AT AS date),
			SALE_PRICE
		FROM ORDER_ITEMS) TO 'D:\Kuliah\SEMESTER 6 (MSIB)\Final project Data\Python Analysis\Dataset final project\products_date.csv' WITH CSV
	
	
	
-- mencari jumlah sale_price yang memiliki status complete dan dilakukan group dengan created_at
SELECT CREATED_AT :: date AS CO,
	SUM(SALE_PRICE)
FROM ORDER_ITEMS
WHERE STATUS = 'Complete'
GROUP BY CO
ORDER BY CO 
-- ekstrak
COPY
	(SELECT CREATED_AT :: date AS CO,
			SUM(SALE_PRICE)
		FROM ORDER_ITEMS
		WHERE STATUS = 'Complete'
		GROUP BY CO ORDER BY CO) TO 'D:\Kuliah\SEMESTER 6 (MSIB)\Final project Data\Python Analysis\Dataset final project\sale_price_analysis.csv' WITH CSV
	
SELECT CREATED_AT :: date AS CO,
	SUM(SALE_PRICE)
FROM ORDER_ITEMS
GROUP BY CO
ORDER BY CO 

COPY
	(SELECT CREATED_AT :: date AS CO,
		SUM(SALE_PRICE)
		FROM ORDER_ITEMS
		GROUP BY CO ORDER BY CO) TO 'D:\Kuliah\SEMESTER 6 (MSIB)\Final project Data\Python Analysis\Dataset final project\sale_price_analysis_full.csv' WITH CSV

	
select * from order_items
SELECT OT.ID,
	OT.USER_ID,
	US.AGE,
	US.GENDER,
	OT.CREATED_AT,
	OT.STATUS,
	OT.sale_price,
	US.CITY,
	US.STATE,
	US.COUNTRY,
	US.LATITUDE,
	US.LONGITUDE
FROM ORDER_ITEMS AS OT
JOIN USERS AS US ON OT.USER_ID = US.ID
COPY
	(SELECT OT.ID,
			OT.USER_ID,
			US.AGE,
			US.GENDER,
			OT.CREATED_AT,
			OT.STATUS,
			OT.SALE_PRICE,
			US.CITY,
			US.STATE,
			US.COUNTRY,
			US.LATITUDE,
			US.LONGITUDE
		FROM ORDER_ITEMS AS OT
		JOIN USERS AS US ON OT.USER_ID = US.ID) TO 'D:\Kuliah\SEMESTER 6 (MSIB)\Final project Data\Python Analysis\Dataset final project\Data_join_for_visualization.csv'
DELIMITER ',' CSV HEADER;
	
	
	

	
	
	