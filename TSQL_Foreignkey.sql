--///////////////////////////FOREIGN KEY////////////////////////////////
Select * From USERS;
Select * From USERS_JOBS;

Alter Table dbo.USERS
Add Foreign Key(JobID) 
REFERENCES dbo.USERS_JOBS(JobID);

-- Create Table with Primary Key and Foreign Key:

-- Create Table Orders
-- (orderID int primary key,
-- ordernumber int not null,
-- personID int Foreign key References Persons (personID)
-- );


