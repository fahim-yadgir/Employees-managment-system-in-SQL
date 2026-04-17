-- create database employee;
use employee;
-- create table EMP(ID int primary key,name varchar(100),Department varchar(20),Language varchar(20),salary int not null,phone bigint not null);

-- INSERT INTO EMP VALUES
-- (1,'Fahim','IT','Python',50000,9876543210),
-- (2,'Ashraf','HR','English',45000,9876543211),
-- (3,'Zishan','Finance','SQL',55000,9876543212),
-- (4,'Saihan','IT','Java',60000,9876543213),
-- (5,'Affan','Marketing','Hindi',40000,9876543214),
-- (6,'Ayaan','IT','Python',52000,9876543215),
-- (7,'Rehan','HR','English',47000,9876543216),
-- (8,'Imran','Finance','SQL',58000,9876543217),
-- (9,'Sahil','IT','Java',61000,9876543218),
-- (10,'Tariq','Marketing','Hindi',42000,9876543219),

-- (11,'Ali','IT','Python',53000,9876543220),
-- (12,'Sameer','HR','English',46000,9876543221),
-- (13,'Usman','Finance','SQL',57000,9876543222),
-- (14,'Noman','IT','Java',62000,9876543223),
-- (15,'Rizwan','Marketing','Hindi',43000,9876543224),
-- (16,'Faizan','IT','Python',54000,9876543225),
-- (17,'Arman','HR','English',48000,9876543226),
-- (18,'Shadab','Finance','SQL',59000,9876543227),
-- (19,'Salman','IT','Java',63000,9876543228),
-- (20,'Irfan','Marketing','Hindi',44000,9876543229),

-- (21,'Nadeem','IT','Python',55000,9876543230),
-- (22,'Bilal','HR','English',49000,9876543231),
-- (23,'Junaid','Finance','SQL',60000,9876543232),
-- (24,'Kasim','IT','Java',64000,9876543233),
-- (25,'Adil','Marketing','Hindi',45000,9876543234),
-- (26,'Yusuf','IT','Python',56000,9876543235),
-- (27,'Hassan','HR','English',50000,9876543236),
-- (28,'Danish','Finance','SQL',61000,9876543237),
-- (29,'Farhan','IT','Java',65000,9876543238),
-- (30,'Asif','Marketing','Hindi',46000,9876543239),

-- (31,'Rashid','IT','Python',57000,9876543240),
-- (32,'Hamza','HR','English',51000,9876543241),
-- (33,'Sohail','Finance','SQL',62000,9876543242),
-- (34,'Azhar','IT','Java',66000,9876543243),
-- (35,'Parvez','Marketing','Hindi',47000,9876543244),
-- (36,'Wasim','IT','Python',58000,9876543245),
-- (37,'Majid','HR','English',52000,9876543246),
-- (38,'Nisar','Finance','SQL',63000,9876543247),
-- (39,'Qasim','IT','Java',67000,9876543248),
-- (40,'Shakir','Marketing','Hindi',48000,9876543249),

-- (41,'Anwar','IT','Python',59000,9876543250),
-- (42,'Yasir','HR','English',53000,9876543251),
-- (43,'Rafiq','Finance','SQL',64000,9876543252),
-- (44,'Zubair','IT','Java',68000,9876543253),
-- (45,'Akram','Marketing','Hindi',49000,9876543254),
-- (46,'Khalid','IT','Python',60000,9876543255),
-- (47,'Basit','HR','English',54000,9876543256),
-- (48,'Latif','Finance','SQL',65000,9876543257),
-- (49,'Haroon','IT','Java',69000,9876543258),
-- (50,'Naeem','Marketing','Hindi',50000,9876543259);
-- select * from EMP; 

-- select id,name,salary
-- from EMP
-- where Salary = (select max(salary)from EMP)

-- select name , salary
-- from EMP
-- where salary = (
-- 				select max(salary)
--                 from EMP
--                 where salary < (select max(salary) from EMP));
-- select * from EMP;

-- select name,language
-- from EMP 
-- where Language = "Python"

-- select name
-- from EMP
-- where name like "a%";

-- update EMP
-- set salary = salary + 5000
-- where id = 1-- ;
-- select * from EMP;
SET SQL_SAFE_UPDATES = 0;
-- update EMP
-- set salary = salary + 5000
-- where salary <= 40000;
-- SET SQL_SAFE_UPDATES = 1;
-- select * from EMP;

use employee;

-- select language , max(salary)
-- from EMP
-- group by language;

-- select * from EMP;
-- select ID,name
-- from EMP
-- where name like '%f%';

-- select department,max(salary)
-- from EMP
-- group by department;

-- select ID,name ,salary
-- from EMP 
-- where salary >= 62000; 

-- select department,sum(salary)
-- from EMP
-- where department = "IT"
-- group by department;

-- select ID , name , phone
-- from EMP
-- where phone = 9876543235;

-- select * 
-- from EMP
-- where name = "Sameer";

select * from EMP;

select department,max(salary)
from EMP
group by department;

alter table EMP
add Bonus int not null default 5000;
SET SQL_SAFE_UPDATES = 0;
update EMP
set bonus = 4000
where department = "IT";

alter table EMP
add refferd int;

update EMP
set refferd = 1
where ID in (7,4,1,3,6,9,10,19,18,2);

update EMP
set refferd = 8
where ID in (23,24,26,28,20,30,40,27);

select a.id,a.name as employee_name,
b.name as refferd_name
from EMP a
inner join EMP b ON a.refferd = b.id;