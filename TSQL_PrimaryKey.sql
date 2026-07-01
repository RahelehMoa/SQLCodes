--////////////////////////////PRIMARY KEY////////////////////////////////////
-- primary key is unique.
-- we have just one primary key in a table often is ID is primary key.
Select * From SalesLT.Product;
SELECT * FROM UserTest4;

Alter Table UserTest4
Add Constraint PK_id Primary key (customerid);

--nullable column ERROR so we have edit column to not null for primary key.
Alter Table UserTest4
Alter Column customerid int not null 

--////////////////////////////Crrate Table with Identity PK///////////////////////////////
--Auto Generate Id:
create table UserTest5(
id int Constraint pk_constraint Primary Key identity (1,1), 
Test nvarchar(20)
);

INSERT INTO UserTest5 VALUES ('Sara Pormta');

SELECT * fROM UserTest5

--(1,1) Automaticly generated "id" number from 1 by 1 as 1,2,3,4,....
--(1,10) is generated from 1 by 10 as 1,11,21,....

--/////////////////////////////////////////////////////////////////////////
--Show last number of Id:
select @@IDENTITY;

Select IDENT_CURRENT('SalesLT.product');