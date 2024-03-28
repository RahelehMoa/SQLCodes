CREATE TABLE Customer_Table2 (
    CustID int,
	CustName varchar(255),
    FullName varchar(255),
    Address varchar(255),
    City varchar(255),
    Country varchar(255),
	PostalCode varchar(255)
	);

-- The following SQL statement returns all records (Return all the columns) from  a table named "Customer_Table2":

SELECT * FROM Customer_Table2;

-- Note : PostalCode column is "String" with datatype varchar(255) becaude we have - and L letter. There is not int */
INSERT INTO Customer_Table2 (CustID,CustName, FullName, Address, City,Country, PostalCode)
VALUES 
(1,'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle','USA' ,'98128'),
(2,'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', 'Finland' , '21240'),
(3,'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla','Poland', '01-012'),
(4,'Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger','Norway','4006'),
(5,'Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes','Norway','4306'),
(6,'Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'UK','L1 0AA');

INSERT INTO Customer_Table2 (CustID,CustName, FullName, Address, City,Country, PostalCode)
VALUES
(7,'Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'UK','L1 0AA');

-- 

SELECT FullName, City FROM Customer_Table2;

SELECT FullName FROM Customer_Table2;

SELECT FullName, Country, City FROM Customer_Table2;

-- returns the "Country" value from all the records of the "Customer_Table2" table:
SELECT Country FROM Customer_Table2;

-- return only distinct (different) values: select distinct
SELECT DISTINCT Country FROM Customer_Table2;

-- return the number of different countries:

/* SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customer_Table2 ); */

SELECT COUNT(DISTINCT Country) FROM Customer_Table2;

CREATE TABLE Product_Table2 (
    ProductID int,
	ProductName varchar(255),
    SupplierID int,
    CategoryID int,
    Unit varchar(255),
    Price float ,
	);

SELECT * FROM Product_Table2;
INSERT INTO Product_Table2 (ProductID, ProductName, SupplierID, CategoryID, Unit, Price)
VALUES 
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18 ),
(2, 'Chang', 1, 1 ,	'24 - 12 oz bottles', 19  ),
(3, 'Aniseed Syrup' ,1, 2 ,	'12 - 550 ml bottles', 10 ),
(4,'Chef Anton s Cajun Seasoning', 2, 2,'48 - 6 oz jars',22),
(5,'Chef Anton s Gumbo Mix' ,2 , 2 ,'36 boxes', 21.35  ),
(6, 'Grandma s Boysenberry Spread', 3 ,	2 ,'12 - 8 oz jars', 25 ),
(7, 'Uncle Bob s Organic Dried Pears', 3 ,7, '12 - 1 lb pkgs.', 30 ),
(8, 'Northwoods Cranberry Sauce', 3 , 2 ,'12 - 12 oz jars', 40 ),
(9,	'Mishi Kobe Niku', 4 ,6 , '18 - 500 g pkgs.', 97 ),
(10, 'Ikura' ,	4 ,	8, 	'12 - 200 ml jars', 31 ),
(11,'Queso Cabrales',5, 4 ,	'1 kg pkg.', 21 ),
(12,'Queso Manchego La Pastora',5, 	4 ,	'10 - 500 g pkgs.', 38 ),
(13,'Konbu', 6,	8 ,	'2 kg box', 6 ),
(14,'Tofu', 6 ,	7 ,	'40 - 100 g pkgs.', 23.25 ),
(15,'Genen Shouyu', 6 ,2,'24 - 250 ml bottles', 15.5 );
 
 -- Agreggaton Functions are below:

