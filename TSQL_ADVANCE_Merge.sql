Create Table #Employees3 (
EmployeeID INT PRIMARY KEY,
Name NVARCHAR(100),
Department NVARCHAR(50),
Salary DECIMAL(10,2));

Create Table #EmployeesUpdates4 (
EmployeeID INT PRIMARY KEY,
Name NVARCHAR(100),
Department NVARCHAR(50),
Salary DECIMAL(10,2));

INSERT INTO #Employees3 (EmployeeID,Name,Department,Salary)
Values (1,'John Smitte','HR', 5000),
(2,'Jone Doe','IT',7000),
(3,'Alice Lee', 'Finance',6000);

INSERT INTO #EmployeesUpdates4 (EmployeeID,Name,Department,Salary)
Values (1,'John Smitte','HR', 55000),
(3,'Alice Lee','Finance',6200),
(4,'BOb Borwn', 'Marketing',5000);

select*from #Employees3
select*from #EmployeesUpdates4

MERGE INTO #Employees3 AS Target
USING #EmployeesUpdates4 AS Source
ON Target.EmployeeID=Source.EmployeeID
When MATCHED Then
UPDATE SET
Target.Name=Source.Name,
Target.Department = Source.Department,
Target.Salary = Source.Salary

When Not MATCHED BY Target Then

INSERT (EmployeeID, Name, Department, Salary)
Values (Source.EmployeeID, Source.Name, Source.Department, Source.Salary)

When Not MATCHED BY Source Then
      DELETE
OUTPUT
$Action AS ActionTaken,

Inserted.EmployeeID AS InsertedID,
Deleted.EmployeeID AS DeletedID;


