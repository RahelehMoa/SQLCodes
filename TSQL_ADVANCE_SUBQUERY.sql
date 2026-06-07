--///////////////////////////////SUBQUERY///////////////////////////////

Select * From SalesLT.Product
Select * From SalesLT.ProductCategory


Select * From SalesLT.Product
WHERE StandardCost = (Select MAX(StandardCost) From SalesLT.Product);

Select * From SalesLT.Product
WHERE StandardCost > = (Select MIN(StandardCost) From SalesLT.Product);

--//////////////////////////////////////////////////////////////////////////////////
Select * From SalesLT.Product
WHERE ProductCategoryID IN
(Select Distinct ProductCategoryID From SalesLT.ProductCategory Where Name like 'C%');
--نمیتوان از مساوی استفاده کرد چون یک لیستی از اعداد در ساب کواری نتیجه میشود.

Select * From SalesLT.Product
WHERE ProductCategoryID = ANY
(Select Distinct ProductCategoryID From SalesLT.ProductCategory Where Name like 'C%');
-- = any =IN    همان مفهوم بالا یعنی این رادارد 

select * from SalesLT.Product
where StandardCost < all (select AVG(StandardCost) from SalesLT.Product);
-- در ال یک مقدار خروجی در شرط داریم در صورتی که در این یک لیست مقدار خروجی داریم.

--///////////////////////////////Subquery tudartu//////////////////////////////////////////////

Select * From SalesLT.Product
Where ProductCategoryID = 
( select top 1 ProductCategoryID From SalesLT.Product
 group by ProductCategoryID
 order by count(*) DESC);

 --///////////////////////////////Subquery From////////////////////////////////////////////////

 Select * From ( select * from SalesLT.Product where StandardCost > 1000 ) Pro
 where Pro.color = 'Red';

 --//////////////////////////SubQuery Corrolated or Vabaste//////////////////////////////////

 Select P1.* 
 From SalesLT.Product P1
 Where StandardCost > 
 ( Select AVG(StandardCost) From SalesLT.Product P2
 Where P1.ProductCategoryID = P2.ProductCategoryID);



