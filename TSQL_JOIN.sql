select * from SalesLT.Product;
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

Select P.ProductCategoryID,P.Name,PC.Name 
From SalesLT.Product P Join SalesLT.ProductCategory PC
ON P.ProductCategoryID = PC.ProductCategoryID;

--////////////////////////////////LEFT JOUN//////////////////////////////
Select * From SalesLT.SalesOrderDetail 
Select * From SalesLT.Product

Select * 
From SalesLT.Product P LEFT JOIN SalesLT.SalesOrderDetail SD
ON P.ProductID=SD.ProductID

Select P.ProductID,P.Name,P.Color,SD.UnitPriceDiscount,SD.UnitPrice,SD.LineTotal
From SalesLT.Product P LEFT JOIN SalesLT.SalesOrderDetail SD
ON P.ProductID=SD.ProductID

Select CA.CustomerID ,CA.AddressType,CA.ModifiedDate, C.FirstName , C.LastName , C.EmailAddress  
From SalesLT.[SalesLT.Customer] C Left Join SalesLT.CustomerAddress CA
ON C.CustomerID = CA.CustomerID
Order By C.FirstName;

-- Table left should be biger than right table with rows.
-- So we have null valued in left table thet is correct having null values in joins.

--////////////////////////////RIGHT JOIN///////////////////////////////////////

Select * 
From SalesLT.SalesOrderDetail SD RIGHT JOIN SalesLT.Product P
ON SD.ProductID=P.ProductID

Select SD.UnitPrice,SD.UnitPriceDiscount,SD.LineTotal,P.ProductID,P.Name,P.Color
From SalesLT.SalesOrderDetail SD RIGHT JOIN SalesLT.Product P
ON SD.ProductID=P.ProductID

Select CA.CustomerID ,CA.AddressType,CA.ModifiedDate, C.FirstName , C.LastName , C.EmailAddress  
From SalesLT.CustomerAddress CA Right Join SalesLT.[SalesLT.Customer] C
ON CA.CustomerID = C.CustomerID
Order By CA.AddressType DESC;

-- Writing From SalesLT.[SalesLT.Customer] C Right Join SalesLT.CustomerAddress CA
-- that is not correct becuse CustomerAddress is subset of Customer Table  
-- and we don't have null values.

-- Table Right should have bigger than table left in number of rows 
-- So we have null values.
-- Join 3 tabels together:
Select C.CustomerID, OH.SalesOrderID,C.FirstName , C.LastName , C.CompanyName , OH.RevisionNumber , OH.Freight , OD.OrderQty , OD.UnitPrice 
From ((SalesLT.SalesOrderHeader OH Right JOin SalesLT.SalesOrderDetail OD
ON OH.SalesOrderID = OD.SalesOrderID)
Right Join SalesLT.[SalesLT.Customer] C
ON OH.CustomerID = C.CustomerID)
Order By OD.OrderQty DESC;

--/////////////////////////////////FULL OUTER JOIN/////////////////////////////////////
Select * From SalesLT.ProductCategory
Select * From SalesLT.Product

Select * 
From SalesLT.Product P FULL OUTER JOIN SalesLT.ProductCategory PC 
ON P.ProductCategoryID=PC.ProductCategoryID

Select C.CustomerID, OH.BillToAddressID, C.FirstName , C.LastName , OH.RevisionNumber 
From SalesLT.[SalesLT.Customer] C FULL OUTER JOIN SalesLT.SalesOrderHeader OH
ON C.CustomerID = OH.CustomerID
Order By OH.BillToAddressID DESC;





