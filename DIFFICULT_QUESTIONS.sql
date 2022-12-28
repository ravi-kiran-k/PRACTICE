-- create database practice;
-- use practice;
-- create table test(id int not null, name varchar(20), id1 int, city varchar(20), state varchar(20));
-- insert into test values(1,'ravi',1,'bangalore', 'karnataka'),
-- (1,'ravi',1,'delhi', 'delhi'),
-- (2,'kiran',2,'patna', 'bihar'),
-- (3,'krishnappa',3,'mumbai', 'maharastra'),
-- (3,'krishnappa',3,'chennai', 'tamil nadu'),
-- (4,'kung',4,'nagpur', 'maharastra');
use practice;
select * from test;

select id , name,
 group_concat(concat(city,',',state)
separator ',' ) from test 
group by id, name;

use practice;
create table pract(id int not null,
date date, name varchar(20),age int);
alter table pract modify column id varchar(20);


       
    
