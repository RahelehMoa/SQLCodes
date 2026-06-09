--////////////////////////////////ERRORS/////////////////////////////////////////
BEGIN TRY
 DECLARE @Result int
 SET @Result = 9/0
 PRINT 'That is ok'
END TRY
BEGIN CATCH
 PRINT 'There is one ERROR'
 PRINT 'Error is:' + ERROR_MESSAGE ()
 PRINT 'Error Code is :' + CAST (ERROR_NUMBER() AS NVARCHAR)
END CATCH

--//WE HAVE TABLE "USERS" THEN WE WRITE:
BEGIN TRY
   INSERT INTO USERS (id,Name) VALUES(1,'LUCA')
 PRINT 'ok'
END TRY
BEGIN CATCH
 PRINT 'There is one ERROR'
 PRINT 'Error is:' + ERROR_MESSAGE ()
 PRINT 'Error Code is :' + CAST (ERROR_NUMBER() AS NVARCHAR)
END CATCH

-- یعنی اگر مقادیر داخل جدول را نمیدونیم و میخواهیم مقدار اضافه کنیم سپس 
-- در حات بالا TRY CATCH قرار میدیهم تا اگر خطا در هنگام اینزرت بود ببینیم 