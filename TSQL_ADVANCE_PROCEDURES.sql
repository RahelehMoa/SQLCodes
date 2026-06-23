 --///////////////////////////PROCEDURES////////////////////////////////////

Select * From SalesLT.Product
--create Procedure NAME-PROCEDURE
--AS
--BEGIN
--END;
--///////////////////////////Procedure Basic//////////////////////////////
Create Procedure ProductStorewithBlackColor
AS
BEGIN
   Select * From SalesLT.Product 
   WHERE Color='Black'
END;

EXEC ProductStorewithBlackColor      -- RUN PROCEDURE

--فرقش با ویو این است که مقدار متغییر میدهیم و هر مقداری که خواستیم در متغییر قرار میدهیم
-- Define A Variable Color of NVARCHAR then insted of 'Black' we put Variable.
Create Procedure ProductStorewithColor
       @Color NVARCHAR(30)
AS
BEGIN
   Select * From SalesLT.Product 
   WHERE Color=@Color
END;
 
EXEC ProductStorewithColor @Color = 'Red'
EXEC ProductStorewithColor @Color = 'White'
EXEC ProductStorewithColor @Color = 'Blue'

--////////////////////////////////////////////////////
Alter Procedure ProductStorewithColorAndWeight
       @Color NVARCHAR(30),
       @Weight float 
AS
BEGIN
   Select * From SalesLT.Product 
   WHERE Color=@Color AND Weight < @Weight  
END;

EXEC ProductStorewithColorAndWeight @Color = 'Red',@Weight = 1000

--Be carful: in define Variable we put < but in define value , EXEC, we put = 

--/////////////////////////Procedure Advance////////////////////////////////
-- ابتدا وروردی های جدول که @ و نام ستون ها است را وارد میکنیم
--سپس خروجی را به صورت output  با متغییری تعریف میکنیم.
Alter Procedure AddUsers     ---Create or Alter 
@id int, 
@Name nvarchar(50),
@Email nvarchar(50),
@Age int,
@Birthday datetime,
@JobID  nvarchar(100),
@Result nvarchar(50) OUTPUT     --OUtput = متغییر خروجی
As
BEGIN

   IF @Age < 18
   BEGIN
   SET @Result = 'Bad Request ; can not inserted'
   RETURN
   END; 

   INSERT INTO USERS Values (@id,@Name,@Email,@Age,@Birthday,@JobID)  
   SET @Result = 'ok inserted' 
   RETURN 

END;

--/////////////////////////////////OUTPUT////////////////////
--سه خط اخر با هم انتخاب کنید و اجرا کنید

DECLARE @Result nvarchar(50)   --یک متغییر تعریف میکنیم

EXEC AddUsers @id= 6,@Name= 'Alic F',@Email='Alic.F@gmail.com',@Age=39,
@Birthday = '12/2/1986' ,@JobID='34F',@Result =@Result OUTPUT

PRINT @Result

--/////////////////////////SEE RESULT IN TABLE USERS////////////////////

SELECT * fROM USERS

--////////////////////////SEE ALL POROCEDURE//////////////////////////

SELECT * FROM sys.procedures

--Drop PROCEDURE "Name Procedure"