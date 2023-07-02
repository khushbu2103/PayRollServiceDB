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