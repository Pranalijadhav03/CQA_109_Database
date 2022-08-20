create schema petstore;

use petstore;

 create table user ( UserId int primary key,
Firstname varchar (20),
lastname varchar (20),
Email varchar(50),
MoblieNumber double,
address varchar(50)
);

insert into user values (101,'Pranali','jadhav','jadhavpranali@55gmail.com',+918450969650,'mumbai'),
(102,'dipti','jadhav','dipti@gmail.com',+918450969650,'Pune'),
(103,'Rachit','kadam','kadamrachit@55gmail.com',+918453345650,'banglore'),
(104,'shraddha','kamble','kambleshraddhu@gmail.com',+918423467850,'pune'),
(105,'Nisha','rane','nisha123@gmail.com,918465789550','mumbai');
					
SELECT * FROM petstore.user;

create table pet( PetId int primary key,
ID int,
categary varchar(30),
name varchar (30),
potoUrls varchar(30),
Status varchar(30),
foreign key(ID) references user(UserId)
);

insert into pet values (201,101, 'cat','billi','www.pexels.com/search/cat','available'),
(202,102 ,'cat','catty','www.pexels.com/search/cat','available'),
(203,103,'cat','pillu','www.pexels.com/search/cat','available'),
(204,103,'cat',	'honey','www.pexels.com/search/cat','available'),
(205,103,'cat','poosy','www.pexels.com/search/cat','available');

SELECT * FROM petstore.pet;

create table storeDB( storeId int primary key,
petId int,
quantity int,
shipDate datetime,
complete boolean,
foreign key(petId) references pet(petId)
);

insert into storeDB values(301,	201, '4','2022-04-11 00:00:00',	'available','1'),
(302,202,'5', '2022-04-05 00:00:00','available','0'),
(303, 203,'2','2022-06-10 00:00:00'	,'available','1'),
(304,204,'1', '2020-04-05 00:00:00'	,'available','0'),
(305,205,'3', '2020-04-05 00:00:00'	,'available','1');
					
SELECT * FROM petstore.storedb;
delete from storeDB where storeId=305;

select user.Firstname, user.lastname, user.Email, pet.Id, pet.name, pet.status
from user inner join pet
on pet.Id = user.UserId; 

select * 
from pet right join  user
on pet.Id = user.UserId; 

select * 
from pet left join  user
on pet.Id = user.UserId; 

