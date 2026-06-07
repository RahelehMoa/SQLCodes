--////////////////////////////////TABLE MAJAZI////////////////////////////////
--دو جدول را بر هر اساس که دلخواهتان است یا به صورت دایم یا به صورت موقت مثل زیر ایجاد کرده
-- سپس آنها را با هم اجتماع و اشتراک میگیریم دو جدول باید تعدا ستون یکسان و 
-- دیتا تایپ یکسان و نام ستون یکسان داشته باشند که این عملیات انجام شود.

DECLARE @UserTable_1 TABLE (
    ID INT PRIMARY KEY,
    Name NVARCHAR(50),
    Age INT);


DECLARE @UserTable_2 TABLE (
    ID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Age INT);

INSERT INTO @UserTable_1 (ID,Name,Age)
Values( 1, 'ALICE', 30),
      ( 2, 'GIAN', 28),
      ( 3 , 'JAMY', 32);


INSERT INTO @UserTable_2 (ID,Name,Age)
Values( 1, 'LUCA', 27),
      ( 2, 'GIAN', 28);
-- ردیف ها را از دو یا چند جدول با ستون و دیتا تایپ و نام ستون یکسان
--با هم ترکیب میکنیم و تبدیل به یک جدول میکنیم
-- در یونیون ال همه ردیف ها حتی دوبلیکیتت ها هم می آیند اما در یونیون ردیف های تکراری 
-- حدف می شوند
--////////////////////////UNION////////////////////////////
select * from @UserTable_1
UNION
select * from @UserTable_2
--////////////////////UNIONALL/////////////////////////////
--select * from @UserTable_1
--UNION ALL
--select * from @UserTable_2
--///////////////////////INTERSECT//////////////////////////
-- اشتراک بین دو جدول که ردیف دوم کاملا با هم یکسان است بازخوانی و واکشی میشود.
--select * from @UserTable_1
--INTERSECT
--select * from @UserTable_2
--اشتراکات جدول دوم با جدول اول حذف میشود و جدول اول با وجود ردیف هاش فراخوانی میشود.
--select * from @UserTable_1
--EXCEPT
--select * from @UserTable_2