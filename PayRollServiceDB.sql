---Hello World---
---UC1 Create PayRoll Database---
create database payRollServiceDB

---UC2 Create table----
create table EmployeePayRoll
(
EmployeeId int identity(1,1) primary key,
Name varchar(225),
Salary float,
StartDate date
)

---UC3 Insert Data In Table---
insert into EmployeePayRoll values('Twiney', 35000, getdate());
insert into EmployeePayRoll (Name, StartDate)values('khushi', getdate());

---UC4 Fetch or Retrieve Data---
select * from EmployeePayRoll

---Update Query---
update EmployeePayRoll set StartDate='05-03-2010', Salary= 52000 where Name='khushi';

---UC5 fetch specific employee data and fetch all employee data based on date range---
select * from EmployeePayRoll where Name='khushi'
select * from EmployeePayRoll where StartDate between '2000-01-01' and getDate();
--using cast is optional---
select * from EmployeePayRoll where StartDate between cast('2000-01-02' as date) and getDate();
update EmployeePayRoll set StartDate='1996-05-06', Salary=65000 where Name='khushi'

---UC6 Add gender column and update gender column based on employee's data---
alter table EmployeePayRoll add Gender char(1);
update EmployeePayRoll set Gender='M'