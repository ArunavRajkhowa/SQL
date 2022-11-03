-- DML STATEMENTS ( SELECT , INSERT, UPDATE, DELETE) 

 -- INSERT 
Select * from Time;
Insert into Time 
(MonthID,MonthDesc,YearID,YearDesc)
values (201412,'December',2014,'2014');

Select * from NewProducts
sELECT * FROM Products

Insert into Products
(ProductCode,ProductDescription,color)
Select ProductCode, ProductDescription,color
from NewProducts
where color='Grey'


-- Update
Select * from Sales ;

Update Sales
Set SalesValue=0,
	SalesQuantity=0
where ProductID IS NULL;

Update Sales
Set MonthID=201601
where SalesValue>9000 and SalesQuantity>120;


-- DELETE 
Delete from Sales
where SalesQuantity<50 or SalesValue<1000;