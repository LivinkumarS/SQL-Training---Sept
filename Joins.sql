use trainees_record;

select * from actress_list;
select * from actress_rating;
select * from latest_movie;

SELECT l.name as actressName ,l.age,l.isMarried,
r.rating FROM actress_list l inner join actress_rating r on 
l.id=r.actressId;

SELECT * FROM actress_list l left join actress_rating r on 
l.id=r.actressId;

SELECT * FROM actress_list l right join actress_rating r on 
l.id=r.actressId;

create table latest_movie(
id int primary key auto_increment,
movie varchar(50),
actressId int not null,
foreign key (actressId) references actress_list(id)
);

insert into latest_movie (movie,actressId)
 values ("Lokah",2),("thug life",4),('Jigra',1);
 
select l.name,r.rating,m.movie from actress_list l 
inner join actress_rating r on l.id=r.actressId
 inner join latest_movie m on l.id=m.actressId;

create table color(
id int primary key auto_increment,
color varchar(10) not null
);
create table size(
id int primary key auto_increment,
size varchar(10) not null
);
create table category(
id int primary key auto_increment,
category varchar(10) not null
);

insert into color (color) values ('red'),('green'),('blue');
insert into size (size) values ('m'),('l'),('xl'),('xxl');
insert into category (category) values ('men'),('women'),('kids');


select c.color,s.size,ca.category from color c cross join
 size s cross join category ca;

