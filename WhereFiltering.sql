use trainees_record;
select * from actor_list ORDER BY age DESC;

insert into actor_list values 
(6,'SK',40),(7,'Sudeep',50),(8,"Yash",35),(9,"Risab shetty",39),
(10,"Rajinikanth",74);

select actorName,age from actor_list where age>50;

select actorName,age from actor_list where id between 3 and 7;

select * from actor_list where id in (4,3,5,3,5,2);

select * from actor_list where actorName like '%_is%';


select * from actor_list where actorName like 's%' or id>5;


select * from actor_list where  actorName not like 's%' 
LIMIT 2 offset 2;




