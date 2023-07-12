Create Database Final_Project 

Create Table tblCategory(
CatID int Identity(1,1) NOT NULL Primary Key,
CatName varchar(50) NOT NULL
)

INSERT INTO tblCategory
VALUES
('Shirts'), ('Pants'), ('Cosmetics'), ('Beauty Products'), ('Art Materials');
SELECT * FROM tblCategory;

Create Table tblCustomer(
CustID int Identity(1,1) NOT NULL PRIMARY KEY,
CustName varchar(50) NOT NULL,
CustPhone varchar(50) NOT NULL
)

INSERT INTO tblCustomer
VALUES
('Rida Akram' , '0324 5690236'), ('Muqaddas Nazir' , '0342 5677812'), ('Maryam Saeed' , '0312 6789646'),
('Yusra Maqsood' , '0398 4357854');

Create Table tblCustBill(
BillID int Identity(1,1) NOT NULL PRIMARY KEY,
CustID int Null,
Total_Price float NULL,
EnteredBy varchar(50) NULL,
EntryDate datetime NULL
)

Create Table tblCustBillDetail(
BillID int foreign key references tblCustBill(BillID),
ProductID int,
ProductName varchar(50),
UnitPrice float,
Unit varchar(10),
TotalPrice float
)


Create Table tblProduct(
ProductID int Identity(1,1) NOT NULL PRIMARY KEY,
ProdName varchar(50) NOT NULL,
ProdDesc varchar(100) NOT NULL,
ProdPrice float NOT NULL,
CatID int foreign key references tblCategory(CatID),
ProdUnit varchar(20)
)

Create Table tblSReciept(
BillID int Identity(1,1) NOT NULL PRIMARY KEY,
SID int,
TotalPrice float,
EnteredBy varchar(50),
EntryDate datetime NOT NULL
)

Create Table tblSRecieptDetail(
BillID int foreign key references tblSReciept(BillID),
ProductID int,
ProductName varchar(50),
UnitPrice float,
Unit varchar(10),
TotalPrice float
)

Create Table tblSupplier(
SID int Identity(1,1) NOT NULL PRIMARY KEY,
Sname varchar(50),
SPhone varchar(50)
)

Create Table tblUser(
Uname varchar(50) NOT NULL PRIMARY KEY,
UfullName varchar(50),
Upassword varchar(50),
Uphone varchar(50),
Role varchar(20)
)
insert into tblUser 
values('Esha','Esha Akram','esha123@','03177420499','Admin'),
('Rida', 'Rida Akram', 'rida123@', '0321 7854678' , 'Admin');
select * 
from tblUser;