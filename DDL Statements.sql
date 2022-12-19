-- Creating database
create database RAVI;

-- Use Database
use ravi;

-- Create Table
create table Kiran(
ID int not null,
NAME varchar(32) not null,
time timestamp default current_timestamp not null,
AGE int,
ADress varchar(32),
Salary int
);

-- Describing the table
desc customer;

-- Changing the table name
alter table kiran RENAME to customer;

-- Add Primary key
alter table customer add constraint primary key(ID);

-- Add a new column
alter table customer add column employer varchar(32);

-- Dropping column 
alter table customer drop column employer;

-- dropping  table
create table Kiran(
ID int not null,
NAME varchar(32) not null,
time timestamp default current_timestamp not null,
AGE int,
ADress varchar(32),
Salary int
);
drop table kiran;


-- dropping database
create database kiran;
drop database kiran;


--DML 
--INSERTING DATA Into a table
insert into table kiran (values)
-- cte
select * from ravi 


