use master
go
if(db_id('OHD')is not null)
drop database OHD
go
create database OHD
go
use OHD
go
create table userTypes(
userTypeID int identity(1,1) primary key,
userTypeName varchar(20)
)
create table users(
userID int identity(1,1) primary key,
userName varchar(20),
passWord varchar(20),
userType int references userTypes(userTypeID),
uName varchar(20),
Age int,
Address varchar(50)
)
go
create table requests(
requestID int identity(1,1) primary key,
userID int references users(userID),
date smalldatetime
)
create table endUsers(
endUserID int identity(1,1) primary key,
userType int references userTypes(userTypeID)
)
go
create table departments(
departmentID int identity(1,1) primary key,
departmentName varchar(20)
)
go
create table employees(
employeeID int identity(1,1) primary key,
userType int references userTypes(userTypeID),
departmentID int references departments(departmentID)
)
go

create table requestDetails(
requestDetailID int identity(1,1) primary key,
requestID int references requests(requestID),
requestType varchar(20),
requestStatus varchar(20),
employesID int references employees(employeeID),
remark varchar(100),
)
go
