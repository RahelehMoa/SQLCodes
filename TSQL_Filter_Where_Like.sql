--/////////////////////////////FILTER LIKE////////////////////////////////

select * from SalesLT.Product;
--All Names are starting with letter "S"
select * from SalesLT.Product
Where Name Like 'S%';
--All Names are starting with letter "A"
select * from SalesLT.Product
Where Name Like 'A%';
--All Names are starting with letter "SP"
select * from SalesLT.Product
Where Name Like 'SP%';
--All Names are starting with letter "SPORT"
select * from SalesLT.Product
Where Name Like 'Sport%';

--All Names are End with letter "S"
select * from SalesLT.Product
Where Name Like '%S';
--All Names are End with letter "RS"
select * from SalesLT.Product
Where Name Like '%rs';

--All Names are End/Start/Between with letter "S"
select * from SalesLT.Product
Where Name Like '%S%';
--All Names are End/Start/Between with letter "SL"
select * from SalesLT.Product
Where Name Like '%Sl%';

--All Names are second letter with start letter "L"
select * from SalesLT.Product
Where Name Like '_l%';

--All Names are letter Before End with letter "L"
select * from SalesLT.Product
Where Name Like '%l_';

--All Names are NOT starting from A to F
select * from SalesLT.Product
Where Name Like '[^a-f]%';