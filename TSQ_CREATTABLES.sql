create table USERS  
(id int Primary Key, 
Name nvarchar(50),
Email nvarchar(50),
Age   int,
Birthday datetime,
JobID  nvarchar(100));

INSERT INTO USERS VALUES (1,'JAN lEE','JAN.LEE@GMAIL.COM',34,19/5/1997,'1l');

SELECT * fROM USERS

--/////////////////////////USER JOBS//////////////////////////

create table USERS_JOBS 
(JobID nvarchar(100) Primary Key, 
JobName nvarchar(50)
);

INSERT INTO USERS_JOBS  VALUES ('22G','Teacher'), 
                               ('25G','Photografer'),
                               ('30D','Cocker');

SELECT * fROM USERS_JOBS 
