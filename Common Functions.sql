-- COMMON FUNCTIONS

--1) Ranking Function (Rank(),Dense_rank(),row_number() )
Select * from HumanResources.Employee

SELECT JobTitle,LoginID,HireDate,
Rank() Over(partition by JobTitle order by HireDate)
from HumanResources.Employee

Select ROW_NUMBER() over(order by Name) as ROwnumber,*
from Sales.Store;


-- 2)DATE AND TIME FUNCTIONS(Convert,getdate,datepart,dateadd,dateduff)
Select ModifiedDate,datepart (yyyy,ModifiedDate) as Year 
from HumanResources.Employee

select CONVERT(Date,getdate(),101) --gatedate() / col name

select DATEADD(year,1,'14/09/2015') -- wrong format...right format yyyy/mm/dd
select DATEADD(year,1,'2015/09/12')
SELECT DATEADD(month, 2, '2017/08/25') AS DateAdd

select	DATEDIFF(year,'2019/08/2','2010/09/5');

-- LOGICAL FUNCTIONS( choose() , IIF() )
Select * from HumanResources.Shift

select  Name,
CHOOSE(ShiftID,'General Shift','Reporting Shift','Critical Shift')
from HumanResources.Shift -- one to one correspondance


select Description,DiscountPct,
IIF (DiscountPct>0.30 ,'Bumper Sale','Regular Sale')
from Sales.SpecialOffer


-- String Functions & mathematical functions --easy read

-- Conversion Functions ( Cast() , COnvert() )
Select 'List Price of Product' + 'is ' + 
convert(nvarchar,ListPrice) +
' as on date ' + convert(nvarchar,SellStartDate)
from Production.Product


Select 
CAST( CAST(OrderQty as decimal(10,2) )/ CAST(ScrappedQty as decimal(10,2))
as decimal(10,2)) RatioKela
from Production.WorkOrder
where ScrappedQty>0


-- Analytic functions

	--FIRST_VALUE / LAST_Value
Select Name,Color,SafetyStockLevel,
FIRST_VALUE(SafetyStockLevel) Over (Partition by Color Order by SafetyStockLevel)
Highest_Stock_level
From Production.Product

	-- LEAD/LAG
Select SalesOrderID,
ProductID,
LineTotal,
LEAD(LineTotal,1,0.00) Over (Order by LineTotal Desc) NextBestSale,
LineTotal - LEAD(LineTotal,1,0.00) Over (Order by LineTotal Desc) as SaleAmountChange
from Sales.SalesOrderDetail
Where ProductID=777