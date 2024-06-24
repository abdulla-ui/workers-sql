create database worker
use worker
create table wokers(workerid int,firstname varchar(50),lastname varchar(50),salary int,joiningdate datetime,department varchar(50))
insert into wokers values(001,'monika','arora',100000,'2021-02-20 09:00:00','hr')
insert into wokers values(002,'niharika','verma',80000,'2021-06-11 09:00:00','admin')
insert into wokers values(003,'vishal','singhal',300000,'2021-02-20 09:00:00','hr')
insert into wokers values(004,'amitabh','singh',500000,'2021-06-11 09:00:00','admin')
insert into wokers values(005,'vivek','bhati',500000,'2021-06-11 09:00:00','admin')
insert into wokers values(006,'vipul','diwan',200000,'2021-06-11 09:00:00','account')
insert into wokers values(007,'satish','kumar',75000,'2021-01-20 09:00:00','account')
insert into wokers values(008,'geetika','chauhan',90000,'2021-04-11 09:00:00','account')
select * from wokers


create table bonus(worker_ref_id int,bonusdate datetime,bonus_amount int)
insert into bonus values(1,'2023-02-20 00:00',5000)
insert into bonus values(2,'2023-06-11 00:00',3000)
insert into bonus values(3,'2023-02-20 00:00',4000)
insert into bonus values(1,'2023-02-20 00:00',4500)
insert into bonus values(2,'2023-06-11 00:00',3500)
select * from bonus



create table title(worker_ref_id int,woker_title varchar(30),affected_from datetime)
insert into title values(1,'manager','2023-02-20 00:00')
insert into title values(2,'executive','2023-06-11 00:00')
insert into title values(8,'executive','2023-06-11 00:00')
insert into title values(5,'manager','2023-06-11 00:00')
insert into title values(4,'asst.manager','2023-06-11 00:00')
insert into title values(7,'executive','2023-06-11 00:00')
insert into title values(6,'lead','2023-06-11 00:00')
insert into title values(3,'lead','2023-06-11 00:00')
select * from title




---1
select upper(firstname)as uppercase from wokers

---2
select department from wokers group by department 

---3
select left(firstname,3)from wokers

---4
select trim(firstname)as firstname from wokers

---5
select department,len(department) from wokers group by department

---6 

select replace(firstname,'a','A') as firstletter from wokers

---7
select concat(firstname,' ',lastname) as completename from wokers

---8
select*from wokers order by firstname asc

---9
select*from wokers where salary between 100000 and 500000

--10
select*from wokers where joiningdate>='2021-02-01' and joiningdate<='2021-02-28'


---11
select count(department) from wokers where department='admin'

---12
select department,count(*)as countname from wokers group by department order by countname desc

---13
create table newtable as select*from wokers

---14
select getdate() as currentdatetime

---15
select top 5 *from wokers


---16
select department from wokers group by department having count(*) <5

---17
select department,sum(salary) from wokers group by department

---18
select*from wokers where firstname in('vipul','satish')




