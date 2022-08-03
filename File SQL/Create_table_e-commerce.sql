-- Create table for database E-commerce
-- table users (departemen marketing)
-- table order_items (departemen sales)
-- table inventory_items (departemen product)
-- table employees (departemen HR)

create table users(
	id integer primary key,	
	first_name varchar(20),
	last_name varchar(20),
	email varchar(50),
	age integer,
	gender varchar(9),
	state varchar(50),
	street_address varchar(50),
	postal_code varchar(10),
	city varchar(50),
	country varchar(50),
	latitude float,
	longitude float,
	traffic_source varchar(50),
	created_at timestamp
)

create table inventory_items(
	id integer,
	product_id integer,
	created_at timestamp,
	sold_at timestamp,
	cost float,
	product_category varchar,
	product_name varchar,
	product_brand varchar,
	product_retail_price float,
	product_department varchar,
	product_sku varchar,
	product_distribution_center_id integer
)

create table order_items(
	id integer,
	order_id integer,
	user_id integer,
	product_id integer,
	inventory_item_id integer,
	status varchar,
	created_at timestamp,
	shipped_at timestamp,
	delivered_at timestamp,
	returned_at timestamp,
	sale_price float
)

create table employees(
	Fisrt_Name varchar,
	Last_Name varchar,
	Gender varchar,
	Age float,
	Length_Service float,
	Absent_Hours float,
	distribution_centers_id integer
)

create table products(
	id integer,
	cost float,
	category varchar,
	name varchar,
	brand varchar,
	retail_price float,
	department varchar,
	sku varchar,
	distribution_center_id integer
)

create table orders(
	order_id integer,
	user_id integer,
	status varchar,
	gender varchar,
	created_at timestamp,
	returned_at timestamp,
	shipped_at timestamp,
	delivered_at timestamp,
	num_of_item integer
)