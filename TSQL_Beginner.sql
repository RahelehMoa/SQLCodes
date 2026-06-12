--//////////////////////////////SELELCT/////////////////////////////////////+
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
