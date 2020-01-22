create table Department(
Id int Identity (1,1),
Names varchar not null,
Locatation varchar not null,
Primary key (Id));



select * from Department;

create table Employee(
Id int Identity(1,1),
FirstName varchar not null,
LastName varchar not null,
SSN char(9) unique,
DeptId int not null,
PRIMARY KEY(ID),
FOREIGN KEY(deptid) References Department(id));


create table EmpDetails(
Id int Identity(1,1),
EmployeeId int not null,
Salary money default (1000000),
Address1 varchar(max) not null,
Adrdress2 varchar(max),
City varchar(max) not null,
State varchar(max) not null,
Country varchar(max) not null,
Primary key(ID),
Foreign key(EmployeeId) references Employee(ID)
)


Insert into Department values('Accounting', 'Denver')
Insert into Department values('Sales', 'Chicago')
Insert into Department values('Software Dev.', 'Arlington')

Insert into dbo.Employee values('Steven', 'Alvarez', 123456789, 1 )
Insert into dbo.Employee values('Sally', 'Smith', 987654321, 2 )
Insert into dbo.Employee values('Richard', 'Tracy', 678912345, 1 )