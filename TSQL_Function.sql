--///////////////////////////////////FUNCTION/////////////////////////////////////

Create Function CalculateArea (@R INT)
RETURNS FLOAT
AS
BEGIN
   RETURN PI() * POWER(@R,2)
END;

Select dbo.CalculateArea (2) as Area;  -- Area Circle

---/////////////////////////////////////////////////////

Create Function CalculateEXP (@DATE Date, @INTERVAL INT)
RETURNS DATE
AS
BEGIN
   DECLARE @EXP DATE
   SET @EXP = DATEADD(MONTH,@INTERVAL,@DATE)
   RETURN @EXP 
END;

Select dbo. CalculateEXP ('2026-07-23',5) as Area;