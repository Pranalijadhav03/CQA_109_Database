create database uploadDB;
use uploadDB;

create table upload (
userID int not null auto_increment,
userName varchar(50) not null,
userType varchar(50),
primary key (userID)
);

select * from upload;

drop table upload;

load data infile 'C:/Program Files/MySQL\MySQL Workbench 8.0/Uploadfile/uplaod.csv'
into table upload
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;