use trainees_record;

create table employee_details(
id int primary key auto_increment,
name varchar(30) not null,
mailId varchar(40) unique not null,
phone int unique not null,
isActive bool default 0
);

alter table employee_details add column salary int;
alter table employee_details modify column phone bigint;

insert into employee_details (name,mailId,phone,salary,isActive) values
('saran','saran@gmail.com',7904535371,55000,1),
('saranya','saranya@gmail.com',9245776645,30000,0);


select * from employee_details;

CREATE VIEW contactDetails AS select id,mailId,phone from employee_details;

select * from contactdetails;
