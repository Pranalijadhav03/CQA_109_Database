create schema Spotify;

use Spotify;

create table UserDetails (
UserId int,
Firstname varchar(20),
lastname varchar(20),
Email varchar(50),
age int,
MobileNumber double,
address varchar(50),
primary key(UserId)
);
insert into UserDetails values (101,'Pranali','jadhav','jadhavpranali@55gmail.com',25, +918450969650,'mumbai'),
(102,'dipti','jadhav','dipti@gmail.com', 20,+918450969650,'Pune'),
(103,'Rachit','kadam','kadamrachit@55gmail.com',22, +918453345650,'banglore'),
(104,'shraddha','kamble','kambleshraddhu@gmail.com',21, +918423467850,'pune'),
(105,'Nisha','rane','nisha123@gmail.com', 19, +918465789550,'mumbai');

select * from UserDetails;


create table Playlists( PlaylistId int primary key,
Id int,
PlaylistName varchar(50),
foreign key(Id) references UserDetails(UserId)
);

insert into Playlists values(201,101,'RAIN PARTY'),
(202,103,'BIRTHDAY PARTY'),
(203,103,'PULL PARTY'),
(204,104,'CHILL PARTY'),
(205,105,'HOLIDAY PARTY');

select * from Playlists;

select UserDetails.Firstname, UserDetails.lastname, UserDetails.Email, Playlists.Id, Playlists.PlaylistId, Playlists.PlaylistName
from UserDetails inner join Playlists
on Playlists.Id = UserDetails.UserId; 

select * 
from UserDetails right join  Playlists
on UserDetails.UserId = Playlists.Id; 

select * 
from UserDetails left join  Playlists
on UserDetails.UserId = Playlists.Id; 


create table track(
TrackId int primary key,
ID int,
Lyrics varchar(50),
SingerName varchar(50),
WrittenBy varchar(50),
Compose varchar(50),
UnderLicense varchar(40),
Released int,
foreign key(ID) references Playlists(PlaylistId)
);

insert into Track values(1001,201,'dil se re','Arjit','atif', 'Ahmad anees', 'xyz', 20),
(1002,202,'Samjhava','Arjit sing','Ahmad anees', 'shreeya goshal','abc',25),
(1003,203,'khuda bhi','shreeya goshal','ritam','ali jafer','tyu',22),
(1004,204,'Samjhava','ritam','Arjit','ali jafer', 'asdf', 30),
(1005,205,'khuda bhi','shreeya goshal','ritam','ali jafer','tyu',22);

select * from Track;

