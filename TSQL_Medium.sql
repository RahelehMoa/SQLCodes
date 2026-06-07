select * from SalesLT.Product;

--/////////////////////////////////HAVING/////////////////////////////////
select Color, SUM(StandardCost) as TotalPrice 
from SalesLT.Product
GROUP BY Color
HAVING SUM(StandardCost) > 100;  --condition Having
-- حتما باید از اگرگیشن فانکشن ها استفاده کنید در شرطHaving.
select Color, SUM(StandardCost) as TotalPrice, SUM(Weight) as TotalWight 
from SalesLT.Product
WHERE Color!='Red'  -- condition where = color Red is not in condition Having
GROUP BY Color
HAVING SUM(Weight) > 100;  --condition Having

--////////////////////////////////ORDER BY|SORT///////////////////////////////
select * from SalesLT.Product
ORDER BY StandardCost ASC;
select * from SalesLT.Product
ORDER BY Weight;

select * from SalesLT.Product
ORDER BY StandardCost DESC;
select * from SalesLT.Product
ORDER BY StandardCost DESC,Weight DESC;

select Color, SUM(StandardCost) as TotalPrice
from SalesLT.Product
GROUP BY Color
ORDER BY TotalPrice DESC; --SUM(StandardCost) = TotalPrice 
--در اوردربای همیشه فقط نام یک ستون قرار میگیرد یا 
-- فانکشن و یا نام ستون علیاز قرار میگیرد.

--///////////////////////////////JOIN///////////////////////////////////
--///////////////////////////INNER JOIN////////////////////////////////
Select * From SalesLT.SalesOrderDetail
--where ProductID= 712   --عنصر مشترک دارند 
-- در این جدول پروداکت ایدی وجود دارد که به ما راهنمایی میکند که به جدول پروداکت میتوان با جدول 
--اوردر ستون مشترک دارد و میتوان انها را ترکیب یا جوین کرد.
Select * From SalesLT.Product

Select * 
From SalesLT.SalesOrderDetail SD INNER JOIN SalesLT.Product P 
ON SD.ProductID=P.ProductID

Select  P.ProductID,SD.OrderQty,P.Name,P.Color,SD.LineTotal
From SalesLT.SalesOrderDetail SD JOIN SalesLT.Product P 
ON SD.ProductID=P.ProductID
--////////////////////////////////LEFT JOUN//////////////////////////////
Select * From SalesLT.SalesOrderDetail 
Select * From SalesLT.Product

Select * 
From SalesLT.Product P LEFT JOIN SalesLT.SalesOrderDetail SD
ON P.ProductID=SD.ProductID

Select P.ProductID,P.Name,P.Color,SD.UnitPriceDiscount,SD.UnitPrice,SD.LineTotal
From SalesLT.Product P LEFT JOIN SalesLT.SalesOrderDetail SD
ON P.ProductID=SD.ProductID

--////////////////////////////RIGHT JOIN///////////////////////////////////////

Select * 
From SalesLT.SalesOrderDetail SD RIGHT JOIN SalesLT.Product P
ON SD.ProductID=P.ProductID

Select SD.UnitPrice,SD.UnitPriceDiscount,SD.LineTotal,P.ProductID,P.Name,P.Color
From SalesLT.SalesOrderDetail SD RIGHT JOIN SalesLT.Product P
ON SD.ProductID=P.ProductID

--/////////////////////////////////FULL OUTER JOIN/////////////////////////////////////
Select * From SalesLT.ProductCategory
Select * From SalesLT.Product

Select * 
From SalesLT.Product P FULL OUTER JOIN SalesLT.ProductCategory PC 
ON P.ProductCategoryID=PC.ProductCategoryID

--//////////////////////////////////VIEW///////////////////////////////////////////////
create view Productview as
Select Name,ListPrice,Color
From SalesLT.Product

select * from Productview
-- ویو یک جدول مجازی است که ستون هایی از یک جدول اصلی مثل پروداکت نمایش میدهد.

Drop view Productview1



