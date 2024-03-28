CREATE TABLE OrderDetails_Table (
    OrderDetailID int,
	OrderID int,
    ProductID int,
    Quantity int,
	);

SELECT * FROM OrderDetails_Table;
/*INSERT INTO OrderDetails_Table (OrderDetailID, OrderID, ProductID, Quantity)
VALUES 
(1,'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle','USA' ,'98128'),
(2,'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', 'Finland' , '21240'),
(3,'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla','Poland', '01-012'),
(4,'Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger','Norway','4006'),
(5,'Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes','Norway','4306'),
(6,'Tasty Tee', 'Finn Egan', 'Streetroad 19B', 'Liverpool', 'UK','L1 0AA');