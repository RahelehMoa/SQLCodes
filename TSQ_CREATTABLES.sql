create table USERS  
(id int Primary Key, 
Name nvarchar(50),
Email nvarchar(50),
Age   int,
Birthday datetime,
JobID  nvarchar(100));

INSERT INTO USERS VALUES (1,'JAN lEE','JAN.LEE@GMAIL.COM',34,19/5/1997,'1l');

SELECT * fROM USERS
