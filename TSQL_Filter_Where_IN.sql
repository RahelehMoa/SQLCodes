--///////////////////////////Filter WHERE IN///////////////////////////////////

select * from SalesLT.Product;

-- IN is filtering the list of product = list of things.
select * from SalesLT.Product
Where Color IN ('red' , 'black' , 'white');

-- all values are string becuse we have string letters.
-- 58 is not int that is '58' string.
select * from SalesLT.Product
Where Size IN ('58' , 'L' , 'M');

-- NOT IN 
select * from SalesLT.Product
Where Color NOT IN ('black');

select * from SalesLT.Address;
select * from SalesLT.Address
where CountryRegion IN ('United States','Canada');

--Subquery
select * from SalesLT.Product
Where Color IN 
(select color from SalesLT.Product where size = '58');

select color from SalesLT.Product where size = '58';

select distinct ProductID from SalesLT.SalesOrderDetail;  -- product id = 142
select * from SalesLT.Product;    -- product id = 295

select * from SalesLT.Product
where ProductID IN (select ProductID from SalesLT.SalesOrderDetail);
-- product id`(s) are in orderdetalies 142 select by IN of product tabel is select.

select * from SalesLT.Product
where ProductID NOT IN (select ProductID from SalesLT.SalesOrderDetail);
-- product id`(s) are in orderdetalies 153 select by IN of product tabel is select.
-- that total product id = 295 in product table and we select in subquery.
