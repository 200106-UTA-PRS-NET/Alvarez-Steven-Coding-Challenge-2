create table Department(
Id int Identity (1,1),
Names varchar not null,
Locatation varchar not null,
Primary key (Id));

drop table Department;

alter table Department
	add Names varchar(max) not null,
	Locations varchar(max) not null

Create Table Department(
    ID INTEGER not null IDENTITY(1,1),
    _NAME varchar(50),
    _Location VARCHAR(50)
)

Alter Table Department Add Primary Key (ID)


select * from Employ;





Create Table Employee(
    ID INTEGER not null IDENTITY(1,1),
    FirstName varchar(50),
    LastName varchar(50),
    SSN bigint not null,
    deptid int not null,
    PRIMARY KEY(ID),
    FOREIGN KEY(deptid) REFERENCES Department(id)
)

)

Create Table EmployeeDetails(
    ID INT not null IDENTITY(1,1),
    EmployeeID int,
    Salary money,
    Address1 varchar(100),
    Address2 VARCHAR(100),
    City VARCHAR(50),
    _State nchar(2),
    Country varchar(50),
    PRIMARY KEY(ID),
    FOREIGN KEY(EmployeeID) REFERENCES Employee(ID)
)

select * from EmployeeDetails;





Insert into Department values('Accounting', 'Denver')
Insert into Department values('Sales', 'Chicago')
Insert into Department values('Software Dev.', 'Arlington')

Insert into dbo.Employee values( 'Steven', 'Alvarez', 123456789, 1)
Insert into dbo.Employee values('Sally', 'Smith', 987654321, 2 )
Insert into dbo.Employee values('Richard', 'Tracy', 678912345, 1 )


Insert into dbo.EmployeeDetails values(3,90000,'100','addresss1','Denver','CO','United States')
Insert into dbo.EmployeeDetails values(3,90000,'100','addresss1','Denver','CO','United States')
Insert into dbo.EmployeeDetails values(3,90000,'100','addresss1','Denver','CO','United States')