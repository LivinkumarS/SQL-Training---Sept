use trainees_record;
select actorName as name, id as actorId from actor_list;

CREATE TABLE product (
id int primary key,
name varchar(50),
price float
);

insert into product values (1,"tomato",30.55),
(2,"onion", 40.44),(3,"turmeric",10.10),
(4,"ladies finger",60.40),(5,"apple",200.05);

select name as productName, round(price) as productPrice from product;

select name as productName, ceil(price) as productPrice from product;

select name as productName, floor(price) as productPrice from product;

select ROUND(10.49) as roundedOffNumber;

select ceil(10.0009) as roundedOffNumber;

select floor(10.9999999) as roundedOffNumber;

select mod(40,3) as reminder;

select concat("Hello"," world!", " Hi World!") as sentence;

select length("coolie");

select upper("coolie");

select lower("COOLIE");

select upper(replace("Hello world","Hello","Vanakkam")) 
as greetWorld;


select now() as currentDateTime;
select curdate() as currentDate;
select curtime() as currentTime;

select datediff('2025-10-20',now()) as numberOfDaysRemainingForDeepavali;


select * from actor_list;


select concat("His name is ", upper(actorName), " and his age is ",
 age) as actorDetails
 from actor_list

