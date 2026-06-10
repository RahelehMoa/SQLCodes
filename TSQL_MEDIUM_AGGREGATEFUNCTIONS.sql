--////////////////////////AGREGATE FUNCTIONS//////////////////////////
--MIN()
--MAX()
--SUM()
--AVG()
--COUNT()
-- ALWAYS WE USED AS KEWORD AND ALIAS
-- ALWAYS WE USED NUMERICAL COLUMN in ()

-- * delete and replace with Min(), Max()

select * from SalesLT.Product

select MAX(StandardCost) As MaxStdCost from SalesLT.Product;
select MIN(StandardCost) As MinStdCost from SalesLT.Product;
select SUM(StandardCost) As TotalStdCost from SalesLT.Product;
select AVG(StandardCost) As MediumStdCost from SalesLT.Product;
select MAX(StandardCost) As MaxStdCost,MIN(StandardCost) As MinStdCost,AVG(StandardCost) As MediumStdCost
from SalesLT.Product; 

-- COUNT ignore "null" values 
-- In count we can calculate string and numerical column 
select COUNT(*) AS CountID from SalesLT.Product;
select COUNT(ProductId) AS CountID from SalesLT.Product;
select COUNT(Weight) AS WeightID from SalesLT.Product;
select COUNT(Name) AS CountName from SalesLT.Product;

--Formula and calculate is possible with colum numerical In Aggregate Function:
select SUM (StandardCost * 20) AS TotalPrice from SalesLT.Product;

--Effect with WHERE that WHERE comes after FROM: 
select COUNT(ProductId) AS CountID from SalesLT.Product
where StandardCost < 360;

SELECT Count(*) from SalesLT.Product 
where ProductId IS NOT NULL;

select * from SalesLT.Product 
Where StandardCost > (select AVG(StandardCost) from SalesLT.Product);

select AVG(StandardCost) As MediumStdCost from SalesLT.Product
Where ListPrice = 1431.50;

select SUM(StandardCost) As TotalStdCost from SalesLT.Product
Where ProductCategoryID = 18;

--////////////////////////////////SELECT DISTINCT//////////////////////////////////
--Delete Dublicated Values: 

select * from SalesLT.Product

select Distinct * from SalesLT.Product

select Distinct Size from SalesLT.Product

--Distinct Delete Dublicated Values and don't repete Values.

select Count(ListPrice) from SalesLT.Product
select Count(Distinct ListPrice) from SalesLT.Product








