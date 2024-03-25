CREATE TABLE Customer_Table (
    CustID int,
	CustName varchar(255),
    FullName varchar(255),
    Address varchar(255),
    City varchar(255),
    Country varchar(255),
	PostalCode varchar(255)
	);

SELECT * FROM Customer_Table;

INSERT INTO Customer_Table (CustID,CustName, FullName, Address, City,Country, PostalCode)
VALUES 
(1,'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle','USA' ,'98128'),
(2,'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', 'Finland' , '21240'),
(3,'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla','Poland', '01-012'),
(4,'Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger','Norway','4006'),
(5,'Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes','Norway','4306'),
(6,'Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'UK','L1 0AA');

/* Note : PostalCode column is "String" with datatype varchar(255) becaude we have - and L letter. There is not int */