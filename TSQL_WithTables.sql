--//////////////////////////////With Tables/////////////////////////////////////////////
-- select ALL queries togther for runing
With ExpenciveProduct11 AS 
(SELECT * 
FROM SalesLT.Product
WHERE StandardCost < 1000 )

Select * From ExpenciveProduct11
where Color = 'Red'

--//////////////////////////////////////////////////////////////////////////////////////

with topcategory AS (
select top 1 ProductCategoryID
from SalesLT.Product
group by ProductCategoryID
order by count(*) DESC
)

Select * From SalesLT.Product where ProductCategoryID = 
(select ProductCategoryID from topcategory) 