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
userTypeID int references userTypes(userTypeID)not null
)
go

create table endUsers(
endUserID int identity(1,1) primary key,
userID int references users(userID)not null,
userTypeID int references userTypes(userTypeID)not null,
endUserName varchar(20) not null,
endUserAge int not null,
endUserAddress varchar(50)
)
go
create table departments(
departmentID int identity(1,1) primary key,
departmentName varchar(20) not null
)
go
create table requests(
requestID int identity(1,1) primary key,
endUserID int references endUsers(endUserID)not null,
date smalldatetime not null
)
go
create table employees(
employeeID int identity(1,1) primary key,
userID int references users(userID)not null,
userTypeID int references userTypes(userTypeID)not null,
departmentID int references departments(departmentID)not null,
employeeName varchar(20) not null,
employeeAge int not null,
employeeAddress varchar(50)
)
go
create table requestDetails(
requestDetailID int identity(1,1) primary key,
requestID int references requests(requestID) not null,
requestType varchar(20)not null ,
requestStatus varchar(20) default('open') not null,
employeeID int references employees(employeeID),
remark varchar(100),
)
go
insert into userTypes values('admin')
insert into userTypes values('employee')
insert into userTypes values('end-user')
go
insert into departments values('bao ve')
insert into departments values('lao cong')
go
insert into users values('employee','123456',2)
insert into users values('employee2','123456',2)
insert into users values('student','123456',3)
insert into users values('student2','123456',3)
insert into users values('admin','123456',1)
go
insert into employees values(1,2,1,'Nguyen Van A',25,'Ha Noi')
insert into employees values(2,2,2,'Tran Duc C',25,'Thai Nguyen')
go
insert into endUsers values(3,3,'Nguyen Thi B',18,'Nam Dinh')
insert into endUsers values(4,3,'Nguyen Thi E',18,'Ha Nam')
go
insert into requests values(1,'2013/01/20')
insert into requests values(2,'2013/01/21')
go
insert into requestDetails values(1,'yeu cau sua chua',default,1,'sua ho em cai may chieu class 2')
insert into requestDetails values(2,'abc',default,1,'xyz')
insert into requestDetails values(1,'yeu cau sua chua',default,null,'sua ho em cai may chieu class 2')
go
create proc viewRequest
as
SELECT     requestDetails.requestDetailID, endUsers.endUserName, requestDetails.requestType, requestDetails.requestStatus, requestDetails.remark, requests.date, 
                      requestDetails.employeeID
FROM         requestDetails INNER JOIN
                      requests ON requestDetails.requestID = requests.requestID INNER JOIN
                      endUsers ON requests.endUserID = endUsers.endUserID
go

create proc viewEmpName
(
@employeeID int
)
as
SELECT     employeeName
FROM         employees 
WHERE     employeeID = @employeeID
go
create proc viewEmpID
(
@employeeName varchar(20)
)
as
SELECT     employeeID
FROM         employees 
WHERE     employeeName = @employeeName
go
create proc setEmployee
(
@requestDetailID int,
@employeeID int
)
as
update requestDetails
set employeeID=@employeeID
where requestDetailID=@requestDetailID
go

create proc viewStatus
(
@employeeName varchar(20)
)
as
SELECT     requestDetails.requestDetailID, requestDetails.requestType, 
                      requestDetails.remark
FROM         requestDetails INNER JOIN
                      employees ON requestDetails.employeeID = employees.employeeID
WHERE     (employees.employeeName = @employeeName)
go
create proc viewRStatus(
@requestDetailID int
)
as
select requeststatus from requestDetails
where requestDetailID=@requestDetailID
go
create proc setStatus(
@requestDetailID int,
@requeststatus varchar(20)
)
as
update requestDetails
set requeststatus=@requeststatus
where requestDetailID=@requestDetailID
go
create proc Userlogin(
@userName varchar(50),
@Password varchar(50)
)
as
SELECT     userTypeID
FROM         users
WHERE     (userName = @userName) AND (passWord = @Password)
go
create proc getEmpName
(
@userName varchar(50)
)
as
SELECT     employees.employeeName
FROM         employees INNER JOIN
                      users ON employees.userID = users.userID
WHERE     users.userName =@userName

go

create proc getEndUserName
(
@userName varchar(50)
)
as
SELECT     endUsers.endUserName
FROM         endUsers INNER JOIN
                      users ON endUsers.userID = users.userID
WHERE     users.userName = @userName
go
create proc changePass
(
@userName varchar(50),
@password varchar(50),
@newPassWord varchar(50)
)
as
Update     users
set         passWord=@newPassWord
WHERE     (userName = @userName) AND (passWord = @password)
go
create proc viewRequestOfEnd
(
@endUserName varchar(50)
)
as
SELECT     requestDetails.requestDetailID, endUsers.endUserName, requestDetails.requestType, requestDetails.requestStatus, requestDetails.remark, requests.date
                      
FROM         requestDetails INNER JOIN
                      requests ON requestDetails.requestID = requests.requestID INNER JOIN
                      endUsers ON requests.endUserID = endUsers.endUserID
where endUsers.endUserName=@endUserName
go
