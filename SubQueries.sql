use trainees_record;

select * from actress_list;
select * from actress_rating;
select * from latest_movie;

select actressId from actress_rating where rating>8;
select name, age from actress_list where id in 
(select actressId from actress_rating where rating>8);

select actressId from latest_movie where movie='Lokah';
select name, age from actress_list 
where id=(select actressId from latest_movie where movie='Lokah');

select * from product_details;

select avg(price) from product_details; 

SELECT * FROM product_details
WHERE price < (SELECT AVG(price) FROM product_details);
