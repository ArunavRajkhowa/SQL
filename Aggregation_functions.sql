-- Aggregate Functions (min(),max(),sum(),count() ... (<col names>/*)
select * from Sales.SalesTaxRate
Select Count(TaxType) as minimum from Sales.SalesTaxRate 
where TaxType =1

-- Group By  
Select * from dbo.Sales
Select CityID,Sum(SalesQuantity) as Summedsales from dbo.Sales 
where SalesValue>=5000
group by CityID 
 

-- Having Clause
Select CityID,Sum(SalesQuantity) as Summedsales from dbo.Sales 
where SalesValue>=5000
group by CityID 
having sum(SalesQuantity)>200 --filtering aggregated data

-- Over - Partition by Clause
Select * from Sales

Select * , sum(SalesQuantity) 
Over (Partition by ProductID )
from Sales
where SalesQuantity>=100

Select * , sum(SalesQuantity) 
Over (Partition by ProductID Order by MonthID )
from Sales
where SalesQuantity>=100

Select *,avg(SalesValue)
Over (Partition by CityID)
from Sales

Select MonthID,count(SalesQuantity)
Over (Partition by MonthID)
from Sales
