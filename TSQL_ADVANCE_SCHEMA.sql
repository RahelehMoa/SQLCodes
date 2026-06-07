--////////////////////////////////////SCHEMA////////////////////////////////////

Create SCHEMA TestProduct

Create Table TestProduct.userschema (
ID int Primary Key,
UserName NVARCHAR(20))

select * From TestProduct.userschema 

-- chenge schema from TestProduct to dbo:

Alter SCHEMA dbo TRANSFER TestProduct.userschema 

-- DELETE SCHEMA TestProduct: 

Drop SCHEMA TestProduct

-- ACCESS Table TO USER Alex:

GRANT INSERT ON dbo.USERS TO Alex
