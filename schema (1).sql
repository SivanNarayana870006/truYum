create  database truYum
go
use truYum
go
create table menu_items(
	item_id int not null primary key,
	item_name varchar(255),
	item_price decimal(10,2),
	item_availability varchar(3),
	item_launch_date date,
	item_category varchar(255),
	item_delivery varchar(3),
)	
go
create table user(
	user_id int not null primary key,
	user_name varchar(max),
)
go
create table cart_Item(
	cart_id int not null primary key,
	user_id int  references user(user_id),  
	item_id int references menu_items(item_id),
)