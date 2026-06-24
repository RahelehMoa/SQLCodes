--///////////////////////////FUNCTIONS STRING///////////////////////////////

--Substring:

DECLARE @Name NVARCHAR(50) = 'MATTEO C'
Select SUBSTRING (@Name,3,5)   
--we count first letter is 1 = M and number of end letter that is everything = E. 

--TRIM - RTRIM - LTRIM
Select TRIM ('        TRAINING SQL.      ') AS TRIMTEST;
Select RTRIM ('        TRAINING SQL.      ') AS RRIMTEST;
Select LTRIM ('        TRAINING SQL.      ') AS LRIMTEST;
-- Space remove from bothside, rightside,leftside.

--REPLACE:
select REPLACE('MATTTT' ,'T','t' );
select REPLACE('MATTTT' ,'T','B' );

--UPPER & LOWER
select UPPER ('lkcjdjhrJFHVfeuyufhdbhj');
select LOWER ('AKSJKDNJJHVRIUFURFHslkfjkvn');

--LEFT & RIGHT
select LEFT ('Training SQL' , 5);
select RIGHT ('Training SQL' , 4);

--CONCATE
select CONCAT(Title,FirstName,' ',LastName, '  ' ,'that number is: ',Phone)
from SalesLT.[SalesLT.Customer]
where CustomerID < 10;

--CONCATE_WS
select CONCAT_WS('-',Title,FirstName,LastName,Phone)
from SalesLT.[SalesLT.Customer]
where CustomerID < 10;

select CONCAT_WS('*',Title,FirstName,LastName,Phone)
from SalesLT.[SalesLT.Customer]
where CustomerID < 10;
-- we use '-' or anything for put distance between strings/columns.

--CONVERT & CAST
select 'Number : ' + CONVERT (NVARCHAR, 12);
select 'Number : ' + CAST (12 AS NVARCHAR);