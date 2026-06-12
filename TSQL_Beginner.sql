--//////////////////////////////SELELCT/////////////////////////////////////
SELECT * FROM SalesLT.[SalesLT.Customer];

Select 20
Select 20*10
--اگر بخواهیم چیزی زا دز خروجی نمایش دهیم از select استفاده میکنیم.

Select 20*10 AS Result

-- * = All things = All Columns and All Recordes

Select * From SalesLT.[SalesLT.Customer];

select * from SalesLT.Address;

--For show some and several Columns

Select LastName From SalesLT.[SalesLT.Customer];

Select City,CountryRegion,AddressID from SalesLT.Address;

Select CountryRegion from SalesLT.Address;

Select Distinct CountryRegion from SalesLT.Address;

-- Distinct is delelcted dublicated values.

--/////////////////////////////Select Top/////////////////////////////////
-- For show 10 recordes in result:

Select Top 10 LastName From SalesLT.[SalesLT.Customer];

--//////////////////////////WHERE////////////////////////////////////////
-- For Condition یا همان شرط روی ردیف ها گذاشتن 

Select * From SalesLT.[SalesLT.Customer]
WHERE CustomerID < 50;

Select * from SalesLT.Address
Where CountryRegion = 'United Kingdom';

Select * from SalesLT.Address
Where AddressID = 640;

--//////////////////////////////Create Table/////////////////////////////////////

Create Table ProductOrder(
Id Int NOT NULL,
ProuctName NVARCHAR(50) NOT NULL,
CustomerName NVARCHAR(100) NOT NULL,
CustomerAge Int,
CreateDate DateTime
)

select * from ProductOrder;


Create Table ProductOrder1(
Id Int Primary Key,
ProuctName NVARCHAR(50) NOT NULL,
CustomerName NVARCHAR(100) NOT NULL,
CustomerAge Int,
CreateDate DateTime
)

Create Table CustometTable(
Id Int IDENTITY(1,1)  Primary Key,
FIRSTNAME NVARCHAR(50) NOT NULL,
LASTName NVARCHAR(200) NOT NULL,
Age Int,
)
-- Primary Key is unic and dont repeat.

--//////////////////////Replace Tabale/////////////////////////////

select * from SalesLT.Product;

select P.*
into ProductNew1
from SalesLT.Product P;

select * from ProductNew1;

select Name,ProductID,color,Size,Weight 
into ProductTest
from SalesLT.Product;

select * from ProductTest;

--///////////////////////////INSERT INTO/////////////////////////////////

select * from ProductOrder;

Select * from ProductOrder1;       --with Primary Key

INSERT INTO ProductOrder(Id,ProuctName,CustomerName,CustomerAge,CreateDate)
VALUES(1,'LB','luca G',36,'6-12-2026')

select * from ProductOrder;

INSERT INTO ProductOrder(Id,ProuctName,CustomerName,CustomerAge,CreateDate)
VALUES(1,'LC','luigi C',32,'6-12-2026'),
(1,'DL','Daniel L',30,'6-12-2026'),
(2,'MM','Monica M','', '6-12-2026'),
(3,'SG','Sara G',24,'6-12-2026');

INSERT INTO ProductOrder(Id,ProuctName,CustomerName)
VALUES(1,'RM','Raheleh M');

select * from ProductOrder;

-- delete columns but put All recordes
INSERT INTO ProductOrder    
VALUES(4,'LG','Ludivica G', 32 , '6-12-2026');

select * from ProductOrder;

-- in Table ProductOrder1 be carful Ids are unic and dont repepat Id. 
-- id = Primary Key.
INSERT INTO ProductOrder1(Id,ProuctName,CustomerName,CustomerAge,CreateDate)
VALUES(1,'LB','luca G',36,'6-12-2026'),
(2,'DL','Daniel L',30,'6-12-2026'),
(3,'MM','Monica M','', '6-12-2026'),
(4,'SG','Sara G',24,'6-12-2026');

select * from ProductOrder1;

INSERT INTO ProductOrder1(Id,ProuctName,CustomerName)
Select CustomerID,LastName,FirstName From SalesLT.[SalesLT.Customer]
Where CustomerID = 20;

select * from ProductOrder1;

INSERT INTO ProductOrder(Id,ProuctName,CustomerName)
Select CustomerID,LastName,FirstName From SalesLT.[SalesLT.Customer]
Where CustomerID < 10;

select * from ProductOrder;

--INSERT INTO CustometTable (Id,FIRSTNAME,LASTNAME,Age) 
--VALUES (1,'luca','G',36);   --ERROR becuse that is a Id uto generate = IDENTITY(1,1)

INSERT INTO CustometTable (FIRSTNAME,LASTNAME,Age) 
VALUES ('luca','G',36)

INSERT INTO CustometTable (FIRSTNAME,LASTNAME,Age) 
VALUES ('Sare','L',30),
('Monica','M',32);

select * from CustometTable;

-- In Table "CustometTable" ids are unic and gennerate utomaticlly.
-- we dont need used in insert to statemment.

--/////////////////////////////////DELETE//////////////////////////////
-- DELETE DATA OR RECORDES

Delete From ProductOrder
Where Id = 1;  

-- we have 10 values that are deleted.

select * from ProductOrder;

--Delete From ProductOrder 

-- Above statement will be deleted all recordes.
-- Cash Data is not remove. 
-- If after delete all recordes we insert into another values it will be 
-- next number(Ex: Id=5) for Id that Id dont start from 1.

--///////////////////////////////TRUNCATE/////////////////////////////

Truncate Table ProductOrder1

select * from ProductOrder1

INSERT INTO ProductOrder1(Id,ProuctName,CustomerName,CustomerAge,CreateDate)
VALUES(1,'LB','luca G',36,'6-12-2026');

-- Id will be start from 1 but in delete Id start from next number for Ex:5.

--//////////////////////////////DROP/////////////////////////////////
-- Delelte Whole Table and we can not see Table in left side in Tables of Database

Drop Table ProductNew


-- DELLETE FROM is Used for Delete Some of DATA and Records with Condition WHERE.
-- TRUNCATE TABLE is Used for Delete ALL Recordes and Cash that start from Id = 1.
-- DROPE TABLE is used for Delete whole table from Database.

-- Note: IN delete with DELLETE AND TRUNCATE after delete we can insert into values
-- in the table but after DROPE we can not insert values becuse table is deleted 
-- from Database.