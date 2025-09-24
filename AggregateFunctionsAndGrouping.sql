use trainees_record;

create table product_details(
id int primary key auto_increment,
name varchar(50) not null unique,
price float not null,
category varchar(10)
);

insert into product_details (name,price,category) values 
('tomato',30.33,'veg'),
('onion',40.50,'veg'),
('ladies finger',30.40,'veg'),
('laptop',40000.50,'gadget'),
('mobile',30000,'gadget'),
('apple',200.20,'fruit'),
('orange',150,'fruit'),
('grapes',400,'fruit');


select * from product_details;

select count(*) from product_details;
select sum(price) from product_details;
select max(price) from product_details;
select min(price) from product_details;
select avg(price) from product_details;

select category,floor(avg(price)) from product_details
 group by category having avg(price)<500;
 
 select * from color;
 
 ALTER TABLE color ADD COLUMN
 concentration enum ('light','dark') default 'light';
 
 ALTER TABLE color MODIFY column color varchar(50) unique;
 
 ALTER TABLE color RENAME COLUMN color to colorName;
 
 ALTER TABLE color DROP COLUMN concentration;
 
 DROP TABLE color;
 