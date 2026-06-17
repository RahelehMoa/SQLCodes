--////////////////////////////////ADD COLUMN | ALTER////////////////////////////

select * from SalesLT.[SalesLT.Customer];

Alter Table SalesLT.[SalesLT.Customer]
Add Age NVARCHAR(10)

-- ERROR for NOT NULL that is incorrect statment.
-- Alter Table SalesLT.[SalesLT.Customer]
-- Add Age2 NVARCHAR(10) NOT NULL

Update SalesLT.[SalesLT.Customer]
Set Age = '10'

--/////////////////////////CHANGE DATA TYPE | ALTER COLUMN////////////////////////////

Alter Table SalesLT.[SalesLT.Customer]
Alter Column Age int

--////////////////////////DELET COLUMN//////////////////////////

Alter Table SalesLT.[SalesLT.Customer]
Drop Column Age 