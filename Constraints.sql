use trainees_record;

create table actress_list(
id int primary key auto_increment,
name varchar(50) not null,
age int,
isMarried bool DEFAULT 0
);
insert into actress_list (name,age) values ('kathrina kaif',42),
('keerthy suresh',31),('nayanthara',35);

insert into actress_list (id,name,age,isMarried) value ('trisha',40,0);

select * from actress_list;
select * from actress_rating;

delete from actress_list where id=4;

drop table actress_list;

create table actress_rating(
id int primary key auto_increment,
rating float not null,
actressId int not null,
foreign key (actressId) references actress_list(id)
);

insert into actress_rating (rating, actressId) values (7,5);
