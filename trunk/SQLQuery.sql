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
userTypeName varchar(20) not null
)
create table users(
userID int identity(1,1) primary key,
userName varchar(20) not null,
passWord varchar(20) not null,
userType int references userTypes(userTypeID)not null,
uName varchar(20) not null,
Age int not null,
Address varchar(50)
)
go
create table requests(
requestID int identity(1,1) primary key,
userID int references users(userID)not null,
date smalldatetime not null
)
create table endUsers(
endUserID int identity(1,1) primary key,
userType int references userTypes(userTypeID)not null
)
go
create table departments(
departmentID int identity(1,1) primary key,
departmentName varchar(20) not null
)
go
create table employees(
employeeID int identity(1,1) primary key,
userType int references userTypes(userTypeID)not null,
departmentID int references departments(departmentID)not null
)
go

create table requestDetails(
requestDetailID int identity(1,1) primary key,
requestID int references requests(requestID) not null,
requestType varchar(20)not null ,
requestStatus varchar(20) default('open') not null,
employesID int references employees(employeeID),
remark varchar(100),
)
go
insert into userTypes values('employee')
insert into userTypes values('end-user')
go
insert into endUsers values(2)
insert into endUsers values(2)
go
insert into departments values('bao ve')
insert into departments values('lao cong')
go
insert into employees values(1,2)
insert into employees values(1,1)
go
insert into users values('employee','123456',2,'Nguyen Van A',25,'Ha Noi')
insert into users values('student','123456',1,'Nguyen Thi B',18,'Nam Dinh')
go
insert into requests values(2,'2013/01/20')
insert into requests values(2,'2013/01/20')
go
insert into requestDetails values(1,'yeu cau sua chua',default,1,'sua ho em cai may chieu class 2')