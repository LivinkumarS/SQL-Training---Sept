use trainees_record;

CREATE TABLE actor_list(
id INT primary key,
actorName varchar(50),
age int
);

INSERT INTO actor_list VALUES (1,'Surya',50),(2,"Ajith",54),
(3,'Vijay',52),(4,'Dhanush',48),(5,'Simbu',48);

SELECT * FROM actor_list;

set sql_safe_updates=0;

UPDATE actor_list SET actorName="Surya" where id=1;

DELETE FROM actor_list;
