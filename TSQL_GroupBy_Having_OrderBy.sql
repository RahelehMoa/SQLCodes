--////////////////////////////GROUP BY//////////////////////////////////
select * from SalesLT.Product;
select * From SalesLT.SalesOrderDetail;
select * From SalesLT.Address;
--Aggregate Functions (MIn/Max/Sum/avg/Count) Used in Group by.
--For ex "Color Column" Used both in "select" and infront of "Group By".

select Color,MAX(StandardCost) AS LargestCost, MIN(StandardCost) AS SmalestCost
from SalesLT.Product
Group By Color;

select ProductCategoryID, SUM (StandardCost) TotalCost
from SalesLT.Product
Group By ProductCategoryID;

--select * From SalesLT.SalesOrderDetail;

Select SalesOrderID, SUM(OrderQty) TotalQty , SUM(UnitPrice) TotalPrice
from SalesLT.SalesOrderDetail
Group By SalesOrderID

Select SalesOrderID, SUM(OrderQty * UnitPrice) Total 
from SalesLT.SalesOrderDetail
Group By SalesOrderID

select ProductCategoryID, COUNT(*) AS NumberOfRecords
from SalesLT.Product
group by ProductCategoryID;

--select * From SalesLT.Address;

select CountryRegion, Count(AddressID) AS NumberOfAdressID
from SalesLT.Address
Group By CountryRegion;

-- It is The Same put * or ID Column in Count().

--//////////////////////////////HAVING/////////////////////////////////
--Having put on Group By and After group By is Used. 
--when we dont used group by we can not use Having and we use where before group by.
select Color, SUM(StandardCost) as TotalPrice 
from SalesLT.Product
GROUP BY Color
HAVING SUM(StandardCost) > 100;  --condition Having

select Color, SUM(StandardCost) as TotalPrice 
from SalesLT.Product
GROUP BY Color
HAVING SUM(Weight) > 500;  --condition Having

-- Havin is Used with Aggregate Functions.
select Color, SUM(StandardCost) as TotalPrice, SUM(Weight) as TotalWight 
from SalesLT.Product
WHERE Color!='Red'  -- condition where = color Red is not in condition Having
GROUP BY Color
HAVING SUM(Weight) > 100;  --condition Having

select CountryRegion, Count(AddressID) AS NumberOfAdressID
from SalesLT.Address
Group By CountryRegion
Having Count(AddressID) > 50;

--//////////////////////////ORDER BY|SORT///////////////////////////////
select * from SalesLT.Product
ORDER BY StandardCost ASC;

select * from SalesLT.Product
ORDER BY Weight;     --ASC = Defult = Increasing

select * from SalesLT.Product
ORDER BY Name DESC;   --DESC = Decreasing = reverce ALphbetically

select * from SalesLT.Product
ORDER BY StandardCost DESC;

select * from SalesLT.Product
ORDER BY StandardCost DESC,Weight DESC;

select * from SalesLT.Address
order by CountryRegion ASC , AddressID DESC;

select Color, SUM(StandardCost) as TotalPrice
from SalesLT.Product
GROUP BY Color
ORDER BY TotalPrice DESC; --SUM(StandardCost) = TotalPrice 
--در اوردربای همیشه فقط نام یک ستون قرار میگیرد یا 
-- فانکشن و یا نام ستون علیاز قرار میگیرد.
-- اگر گروپ بای داریم حتما در اردربای نام  ستون فانکشن قرار  میگیرد و
--  نام ستون معمولی خطا می دهد.
