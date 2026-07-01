--////////////////////////////CONSTRAINT///////////////////////////////////
Select * From Users;

Alter Table Users
Add Constraint UniqeEmail Unique (Email);

insert into users (id,Name,Email) Values(7,'Alic F','Alic.F@gmail.com'); --ERROR CONSTRAINT with repet values

insert into users (id,Name,Email) Values(7,'Alic F','Alic.FG@gmail.com'); -- change Email

--//////////////////////////////////DEFAULT///////////////////////////////////////////////////////

Alter Table Users
Add Constraint df_BDate Default '1995-04-06' for Birthday;

--we dont put Birthday and usually it will be null 
-- but we write constraint for full Birthday column in the above line:

insert into users (id,Name,Email) Values(8,'Sara P','Sara.P@gmail.com');

--//////////////////////////////CHECK//////////////////////////////////////////

Alter Table Users WITH NOCHECK
Add Constraint Age_condition Check (Age >= 30);

insert into users (id,Name,Email,Age) Values(15,'Francesco M','Francesco.M@gmail.com',26);

--//////////////////////////////////////////////////////////////////////////////

Alter Table Users
Drop Constraint Age_condition;

insert into users (id,Name,Email,Age) Values(9,'Francesco M','Francesco.M@gmail.com',26);
