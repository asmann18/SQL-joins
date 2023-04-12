--1) Department database-i yaradırsız.
create database Department

--2) Employee table-ı yaradırsız 
use Department
create table Employee(
ID int PRIMARY KEY identity,
FULLNAME nvarchar(255) NOT NULL,
AGE int check(AGE>=0) NOT NULL,
EMAIL varchar(255) NOT NULL UNIQUE,
SALARY decimal(12,2) NOT NULL check(SALARY>=300 AND SALARY<=2000))

--3) Employee table-na datalar əlavə edirsiz.
insert into Employee
VALUES ('Orxan Aslanov',25,'orxan@gmail.com',499),
('Ayxan Mustafazade',20,'ayxan@gmail.com',2000)


--4) Employee-lərin bütün məlumatlarını göstərirsiz
select*from Employee

--5) Id-i 1 olan employee-nin salary dəyərini update edirsiz
-- burda nese problem oldu ID 2 den basladi :,)
update Employee
SET SALARY=1400
where ID=2

--6) Salary dəyəri 500 ilə 1500 arasında olan bütün dataları göstərən query yazırsız

select *from Employee
where SALARY between 500 and 1500



--7) Bütün employee-ləri salary dəyərinə görə azalan sıralayıb sadəcə fullname, email, salary datalarını göstərən query yazırsız
select FULLNAME,EMAIL,SALARY from Employee
order by SALARY DESC