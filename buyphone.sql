Create Database Buy
Use Buy
go
drop Database Buy
Create Table Customers(
	ID nvarchar (100),
	Username varchar(20),
	Password nvarchar(100),
	Phone varchar(20),
	Name varchar(60),
	Email varchar(100),
	Birthday date,
	Sex bit,
	Address nvarchar(80),
	Passport nvarchar(50)
	Primary key (ID)
)
Create Table Roles(
	Id_Role INT IDENTITY(1,1) PRIMARY KEY,
	Id_Customer nvarchar(100),
	Username varchar(20),
	Value_Role int,
	Foreign key (Id_Customer) references Customers(ID)
)
Create Table Manufacturers(
	Id_Manufacturer nvarchar(100),
	Name_Manufacturer nvarchar(100),
	Active bit default 1,
	primary key (Id_Manufacturer)
)
create table Products(
  ID_Product nvarchar (200),
  Name_Product nvarchar (50),
  Manufacturer_Product nvarchar(100),
  Price_Product Money,
  Img_Product nvarchar(200),
  Active bit default 1,
  Newfeature nvarchar(1000),
  Screen nvarchar(50),
  Operating nvarchar(50),
  FrontCamera nvarchar(50),
  RearCamera nvarchar(50),
  CPU nvarchar(50),
  RAM nvarchar(50),
  InternalMemory nvarchar(50),
  MemoryStick nvarchar(50),
  SIM nvarchar(50),
  Battery nvarchar(50),
  Details nvarchar(2000),
  Primary Key (ID_Product),
  Foreign Key (Manufacturer_Product) References Manufacturers(ID_Manufacturer)
)
