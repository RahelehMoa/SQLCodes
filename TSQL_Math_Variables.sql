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


