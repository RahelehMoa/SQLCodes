--//////////////////////////UPDATA//////////////////////////////

Select * from SalesLT.[SalesLT.Customer];

Update SalesLT.[SalesLT.Customer]
Set FirstName = 'LUCA'
Where CustomerID = 2

Update SalesLT.[SalesLT.Customer]
Set FirstName = 'Sara'
Where LEN(FirstName) < = 4

Delete SalesLT.[SalesLT.Customer]
Where CustomerID between 2 and 4;
