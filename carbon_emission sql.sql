--   -------------------------------------------

-- create  a database 

CREATE DATABASE carbon_emission;

-- --------------------------------------------
-- drop table carbon_emission.user;

-- create table and insert data
create table carbon_emission.user(
UID int primary key,
Name Varchar(50),
Email varchar(100),
password varchar(100)
);

select * 
from carbon_emission.user;

insert into carbon_emission.user
values(1,'bavan','bavan@gmail.com','navab'),
	  (2,'karthick','karthick@gmail.com','aajaar')
      
select * from carbon_emission.user;
-- ----------------------------------------------------

-- Create a transportation table and insert
create table carbon_emission.transportation(
TID int primary key,
UID int not null,
Model varchar(50) not null,
Method varchar(50) not null,
trans_ce dec(3,2)
);

select * 
from carbon_emission.transportation;

insert into carbon_emission.transportation
values(1,1,'truck','road',1.98),
	  (2,2,'van','road',4.55);
      
select * 
from carbon_emission.transportation; 

-- ------------------------------------------

-- Create a  energy table and insert

create table carbon_emission.energy(
EID int primary key,
UID int not null,
energy_con int not null,
energy_ce dec(3,2)
);

select * 
from carbon_emission.energy; 

insert into carbon_emission.energy
values(1,1,150,1.98),
	  (2,2,250,4.55);
      
select * 
from carbon_emission.energy; 

-- ----------------------------------------------------

create table carbon_emission.food(
FID int primary key,
UID int not null,
choice varchar(50) not null,
food_ce dec(3,2)
);

select * from carbon_emission.food;

insert into carbon_emission.food
values(1,1,'Fruits',4.32),
	  (2,2,'vegetables',9.86);
      
select * from carbon_emission.food;

-- -----------------------------------------------

create table carbon_emission.ce(
CID int primary key,
UID int not null
);

select * from carbon_emission.ce;

insert into carbon_emission.ce
values(11,1),
	  (12,2);
      
select * from carbon_emission.ce;

-- ----------------------------------------------------
create table carbon_emission.user_trans(
select u.UID as 'user_id',u.Name,u.Email,u.password, t.UID as 'transport_user_id',t.TID,t.Model,t.Method,t.trans_ce
from carbon_emission.user u
left join carbon_emission.transportation t
on u.UID = t.UID
);

select * from carbon_emission.user_trans;

