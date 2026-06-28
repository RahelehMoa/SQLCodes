--/////////////////////View///////////////////////////

Select * from SalesLT.Product

Create View Product_V AS
Select Name,ProductNumber,StandardCost
From SalesLT.Product
Where ProductID < 800;

Select * From Product_V;

Alter View Product_V AS
Select Name,ListPrice
From SalesLT.Product
Where ProductID < 800;

Select * From Product_V;

Drop View Productview;

Select * From Productview;  --ERROR AND WE DON'T HAVE VIEW.


Create View USA_Customer AS
Select AddressLine1,City,StateProvince,CountryRegion
From SalesLT.Address
Where CountryRegion = 'United States';

Select * From USA_Customer;

Create View [Product Average Price] AS
Select Name,StandardCost 
From SalesLT.Product
where (StandardCost > (select AVG (StandardCost)
From SalesLT.Product));

Select * From [Product Average Price];

Alter View [Product Average Price] AS
Select Name,StandardCost,Color,ListPrice 
From SalesLT.Product
where (StandardCost > (select AVG (StandardCost)
From SalesLT.Product));

Drop View Canada_Customer;

Select * From Canada_Customer; 

-- ERROR THERE IS NOT AVAILABLE AND DROP

--/////////////////////////View Join//////////////////////////////////

Create View  Test_View AS
Select id,Name,Email,JobName
From USERS U LEFT JOIN USERS_JOBS UJ ON U.JobID = UJ.jobID

Select * From Test_View;

-- When we have 2 table as joined so We can not use the INSERT and DELETE.
-- We just use UPDATE:

Update Test_View SET Name = 'Des H' where id = 1;

--/////////////////////////////////////////////////////////////////////////

Create View Test_View2 AS
Select id,Name
From USERS;

Select * From Test_View2;

Insert INTO Test_View2 VALUES(20,'Sara P'); 

-- Be Careful that we can use INSERT INTO JUST
-- when first we have one table second we have primary key
-- so we should use of " id " becuse that is primary key.
-- Create View Test_View2 AS Select Name From USERS; ERROR
-- Wothout primary key ID we have error in INSERT INTO.

--/////////////////////////////////////////////////////////////////

Create View Test_View3 AS
Select id,Name,Email,Age
From USERS
Where Age > 20
WITH CHECK OPTION;

Select * From Test_View3;

Insert INTO Test_View3 VALUES(21,'Luigi B','Luigi.B@gmail.com', 25);
Insert INTO Test_View3 VALUES(22,'Francesco L','Francesco.L@gmail.com', 18);
-- Second insert we have ERROR because 
-- Where is age > 20 so we get ERROR by WITH CHECK OPTION.
-- WITH CHECK OPTION is for ERROR.

--///////////////////////////////////////////////////////////////////////////

Create View Test_View4 WITH ENCRYPTION AS
Select id,Name,Email,Age
From USERS
Where Age > 20;

Select * From Test_View4;

-- we can not create another view the similar Test_View4 

--/////////////////////////////////////////////////////////////////

Create View Test_View6 WITH SCHEMABINDING AS
Select id,Name,Email,Age
From dbo.USERS
Where Age > 20;

Select * From Test_View6;

-- IN this view we just use Drop view other changes is not possible
-- insert and delete and update is not possible.