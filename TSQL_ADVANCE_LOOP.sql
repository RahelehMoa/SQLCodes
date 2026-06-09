--///////////////////////////////LOOP//////////////////////////////

DECLARE @i int = 1;

WHILE @i <= 10   --condition 
BEGIN
  PRINT ' i = ' +CAST(@i AS NVARCHAR)
  SET @i = @i+1 
END;

--///////////////////////////////////////////////////////////////////////////////////////

DECLARE @i int = 1;

WHILE @i <= 10   --condition 
BEGIN
  PRINT ' i = ' +CAST(@i AS NVARCHAR)
  IF @i = 5
  BEGIN
  PRINT 'END WHILE'
  BREAK
  END
  SET @i = @i+1 

END;
--//////////////////////////////////////////////////////////////////////////

-- یک متغییر تعریف می کنیم @i 
DECLARE @i int = 0;

--یک متغییر برای تعداد کل می شمارد  
DECLARE @total int;

-- یک متغییر برای نگهداری اسم های هر محصول
DECLARE @productName NVARCHAR (100);

-- تعداد کل محصولات را در متغییر توتال می ریزیم
Select @total=COUNT(*) From SalesLT.Product

-- از حلقه استفاده میکنیم که روی محصولات پیمایش انجام دهیم
WHILE @i < @total

BEGIN
 select @productName = Name
 from SalesLT.Product
 order by ProductID
 OFFSET @i ROWS FETCH NEXT 1 ROWS ONLY

 PRINT N' ProductName : ' + @productName

 IF @productName = N'AWC Logo Cap'
 BEGIN
 PRINT 'Find it';
 BREAK ;
 END

 SET @i =@i+1

END;