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
userName varchar(15) not null primary key,
passWord varchar(15) not null,
userTypeID int references userTypes(userTypeID)not null
)
go
create table endUsers(
endUserID int identity(1,1) primary key,
userName varchar(15) references users(userName)not null,
enduserName varchar(50) not null,
endUserAge int not null,
endUserAddress varchar(50)
)
go
create table departments(
departmentID int identity(1,1) primary key,
departmentName varchar(20) not null
)
go
create table employees(
employeeID int identity(1,1) primary key,
userName varchar(15) references users(userName)not null,
departmentID int references departments(departmentID)not null,
employeeName varchar(20) not null,
employeeAge int not null,
employeeAddress varchar(50)
)
go
create table requests(
requestID int identity(1,1) primary key,
endUserID int references endUsers(endUserID)not null,
requestType varchar(20)not null ,
requestStatus varchar(20) default('unassigned') not null,
employeeID int references employees(employeeID),
remark varchar(100),
date smalldatetime not null
)
go
create table userMessage(
messageID int identity(1,1) primary key,
sender varchar(50) default('system'),
title varchar(100) not null,
status varchar(50) default('chua doc'),
contents varchar(200) not null,
userName varchar(15) references users(userName)not null,
date smalldatetime
)
create table feedBacks(
feedBackID int identity(1,1) primary key,
senderName varchar(50) not null,
senderEmail varchar(100),
contents varchar(1000) not null,
status varchar(20)not null,
date smalldatetime not null
)

insert into userTypes values('admin')
insert into userTypes values('employee')
insert into userTypes values('end-user')
insert into userTypes values('facilityHead')
go
insert into departments values('bao ve')
insert into departments values('lao cong')
go
insert into users values('employee','123456',2)
insert into users values('employee2','123456',2)
insert into users values('student','123456',3)
insert into users values('student2','123456',3)
insert into users values('admin','123456',1)
insert into users values('facilityHead','123456',4)
go
insert into employees values('employee',1,'Nguyen Van A',25,'Ha Noi')
insert into employees values('employee2',2,'Tran Duc C',25,'Thai Nguyen')
go
insert into endUsers values('student','Nguyen Thi B',18,'Nam Dinh')
insert into endUsers values('student2','Nguyen Thi E',18,'Ha Nam')
go
insert into requests values(1,'yeu cau sua chua','assigned',1,'sua ho em cai may chieu class 2','12/12/2012')
insert into requests values(2,'abc','closed',1,'xyz','12/12/2012')
insert into requests values(1,'yeu cau sua chua',default,null,'sua ho em cai may chieu class 2','03/01/2013')
go
insert into UserMessage values(default,'tao thanh cong yeu cau',default,'ban da tao thanh cong mot yeu cau sua chua vao ngay 03/01/2013','student','03/01/2013')
insert into UserMessage values(default,'yeu cau moi tao',default,'Nguyen Thi B tao thanh cong mot yeu cau sua chua vao ngay 03/01/2013','admin','03/01/2013')
go
insert into feedBacks values('Dang Thanh K','K_dep_zai@yahoo.com.vn','chat luong phuc vu rat tot!!!','chua doc','03/02/2013')
insert into feedBacks values('nguyen Thanh P','P_sieu_nhan@gmail.com','to bao ve can chu y hon ','chua doc','12/01/2013')
go
create proc viewRequest
as
SELECT     requests.requestID, requests.requestType, requests.requestStatus, requests.employeeID, requests.remark, requests.date, endUsers.endUserName
FROM         requests INNER JOIN
                      endUsers ON requests.endUserID = endUsers.endUserID
ORDER BY requests.date DESC
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
@requestID int,
@employeeID int
)
as
update requests
set employeeID=@employeeID,requestStatus='assigned'
where requestID=@requestID
go
create proc viewStatus
(
@employeeName varchar(20)
)
as
SELECT     requests.requestID, requests.requestType, requests.remark, endUsers.userName
FROM         requests INNER JOIN
                      employees ON requests.employeeID = employees.employeeID INNER JOIN
                      endUsers ON requests.endUserID = endUsers.endUserID
WHERE     (employees.employeeName = @employeeName)
order by requests.requestID desc
go
create proc viewRStatus(
@requestID int
)
as
select requeststatus from requests
where requestID=@requestID
go
create proc setStatus(
@requestID int,
@requeststatus varchar(20)
)
as
update requests
set requeststatus=@requeststatus
where requestID=@requestID
go
create proc Userlogin(
@userName varchar(15),
@passWord varchar(15)
)
as
SELECT     userTypeID
FROM         users
WHERE     (userName = @userName) AND (passWord = @Password)
go
create proc getEmpName
(
@userName varchar(15)
)
as
SELECT     employees.employeeName
FROM         employees INNER JOIN
                      users ON employees.userName = users.userName
WHERE     users.userName =@userName

go

create proc getEndUserName
(
@userName varchar(15)
)
as
SELECT     endUsers.endUserName
FROM         endUsers INNER JOIN
                      users ON endUsers.userName = users.userName
WHERE     users.userName = @userName
go
create proc getEndUserID
(
@userName varchar(15)
)
as
select endUsers.endUserID
FROM         endUsers INNER JOIN
                      users ON endUsers.userName = users.userName
WHERE     users.userName = @userName
go
create proc changePass
(
@userName varchar(15),
@passWord varchar(15),
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
SELECT     requests.requestID, endUsers.endUserName, requests.requestType, requests.requestStatus, requests.remark, requests.date
                      
FROM         requests INNER JOIN
                      endUsers ON requests.endUserID = endUsers.endUserID
where endUsers.endUserName=@endUserName
go
create proc createNewRequest(
@endUserID int,
@requestType varchar(50),
@remark varchar(50)
)
as
insert into requests values(@endUserID,@requestType,default,null,@remark,getdate())
go
create proc viewMessageList(
@userName varchar(15)
)
as
select sender,title,date,messageID,status from UserMessage 
where userName=@userName
ORDER BY status
go
create proc viewMessageDetails(
@messageID int
)
as
Update     UserMessage
set         status='da doc' 
WHERE     (messageID = @messageID)
select sender,title,contents,date,status 
from UserMessage
where messageID=@messageID
go
create proc countNewMessage(
@userName varchar(15)
)
as
SELECT     count(messageID)
FROM         UserMessage
where userName=@userName and status='chua doc'
go
create proc changeMessageStatus(
@userName varchar(15)
)
as

go
create proc createMessage(
@title varchar(50),
@contents varchar(200),
@userName varchar(15)
)as
insert into UserMessage values(default,@title,default,@contents,@userName,getdate())
go
create proc checkUserName(
@userName varchar(15)
)
as
SELECT     userName
FROM         users
WHERE     (userName = @userName)
go
create proc regisNewUser(
@userName varchar(15),
@passWord varchar(15),
@userTypeID int
)
as
insert into users values(@userName,@passWord,@userTypeID)
go
create proc regisEmployee(
@userName varchar(15),
@department int,
@name varchar(50),
@age int,
@address varchar(50)
)as
insert into employees values (@userName,@department,@name,@age,@address)
go
create proc regisEndUser(
@userName varchar(15),
@name varchar(50),
@age int,
@address varchar(50)
)as
insert into EndUsers values (@userName,@name,@age,@address)
go
create proc createFeedBack
(
@senderName varchar(50),
@senderEmail varchar(50),
@content varchar(50)
)
as
insert into feedBacks values(@senderName,@senderEmail,@content,'chua doc',getdate())
go
create proc viewFeedBack
as
SELECT     senderName, senderEmail, date, status, feedBackID
FROM         feedBacks
ORDER BY date DESC
go
create proc viewDetailFeedBack
(
@feedBackID int
)
as
update feedBacks set status = 'da doc' where  feedBackID=@feedBackID
select senderName,senderEmail,contents,date from feedBacks where feedBackID=@feedBackID
go
create proc deleteFeedback(
@feedBackID int
)
as
delete from feedBacks where feedBackID=@feedBackID
go
create proc viewStatistics(
@dateFrom smalldatetime,
@dateto smalldatetime
)
as
select count(*) from requests where date between @dateFrom and @dateto And requeststatus ='unassigned'
select count(*) from requests where date between @dateFrom and @dateto And requeststatus ='assigned'
select count(*) from requests where date between @dateFrom and @dateto And requeststatus ='work in progress'
select count(*) from requests where date between @dateFrom and @dateto And requeststatus ='closed'
select count(*) from requests where date between @dateFrom and @dateto And requeststatus ='rejected'
select count(*) from requests where date between @dateFrom and @dateto
go
create proc listOfEachStatus
(
@dateFrom smalldatetime,
@dateto smalldatetime,
@status varchar(20)
)
as
select * from requests where date between @dateFrom and @dateto And requeststatus =@status
select * from requests where date between @dateFrom and @dateto 
go
create proc deleteMessage(
@messageID int
)
as
delete from userMessage where messageID=@messageID
go