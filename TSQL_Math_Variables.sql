--/////////////////////////ROUND NUMBERS/////////////////////////////
-- Round to Low Value
SELECT FLOOR (1.3);     --Answer = 1

SELECT FLOOR (1.7);     --Answer = 1

SELECT FLOOR (1.99);    --Answer = 1

SELECT FLOOR (-1.99);   --Answer = -2

SELECT (ListPrice) FROM SalesLT.Product;
SELECT FLOOR (ListPrice) FROM SalesLT.Product;

--////////////////////////CEILING///////////////////////////

-- Round to UP/Big Value
SELECT CEILING (1.8);     --Answer = 2

SELECT CEILING (1.111);   --Answer = 2

SELECT CEILING (-1.99);   --Answer = -1

SELECT (ListPrice) FROM SalesLT.Product;
SELECT CEILING (ListPrice) FROM SalesLT.Product;

--//////////////////////ROUND///////////////////////////////

SELECT ROUND (12.34626,2);   -- 0,1,2 SO 6 = 2 for round.
SELECT ROUND (12.34426,2); 
SELECT ROUND (124939.34426,-2);
-- -2 = in right side before . = 3 for round other will be 0.
SELECT ROUND (19996.34426,-1);

SELECT (ListPrice) FROM SalesLT.Product;
SELECT ROUND (ListPrice,0) FROM SalesLT.Product;
-- Becarful put one number in Round like 0 for identify Round.

--/////////////////////////////MATH////////////////////////////////

SELECT PI();

SELECT EXP(1) AS Result;
-- قدر مطلق
SELECT ABS(-12) AS Result;
-- علامت عدد - 
SELECT SIGN(-12) AS Result;
-- علامت عدد +
SELECT SIGN(12) AS Result;
-- رندوم تولید عدد 
SELECT RAND() AS Result;  --Generate Numbers

SELECT RAND()*100 AS Result; 
-- توان
SELECT POWER(2,8) AS Result;
--  جذر
SELECT SQRT(100) AS Result;

--///////////////////////////VARIABLE//////////////////////////////
DECLARE @MyName NVARCHAR(50) = 'Sara C';
SELECT @MyName;
--Select both statement togther.

DECLARE @MyName NVARCHAR(50) 
SET @MyName = 'Luca B';
SELECT @MyName;


DECLARE @MyName NVARCHAR(50), @Age INT
SET @MyName = 'Luca B'
SET @Age = 36;
SELECT @MyName,@Age;




