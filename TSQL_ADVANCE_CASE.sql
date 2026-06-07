select * from SalesLT.Product
--/////////////////////////CASE WHEN/////////////////////////////////////////////////////
select CASE WHEN Size < '50' THEN 'S' WHEN Size < '70' THEN 'L' ELSE 'B' END , ProductID
from SalesLT.Product
--check id = 718
select * from SalesLT.Product
where ProductID = 718
--///////////////////////////////////IIF/////////////////////////////////////////////////
select ProductID,Name,ProductNumber,Color,ListPrice,StandardCost,Size,Weight
from SalesLT.Product
-- بخشی از جدول پروداکت را فراخوانی میکنیم.
select ProductID,Name,ProductNumber,Color,ListPrice,StandardCost,
Size,Weight,
IIF(ListPrice > 100,'UP','DOWN') AS Rest,
ISNULL(Size,'100') AS Rest2,
COALESCE(Weight,ListPrice,0) AS Rest3,
COALESCE(Size,Color,'NO') AS Rest4
from SalesLT.Product
--IIF در قسمت اول پرانتز شرط و ستون قرار میگیرد در قسمت دوم پرانتز هر شرطی که برقرار است در قسمت سوم شرطی 
-- که برقرار نیست نمایش داده میشود
-- COALESCE دقت کنید سه قسمت داریم داریم که قسمت اول اگر نال بود مقدار عددی قسمت دوم قرار میکیرد  
-- اگر قسمت دوم هم نال بود قسمت سوم قرار میگیرد
-- ستون های عددی باهم و ستون های عددی در قسمت اولو و دوم قرار میگیرند و ستون های استرینگ
-- هم باهم قرار داده شده است و در دو مثال آورده شده است.

 
