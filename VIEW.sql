-- VIEWS (virtual tables, not stored in memory)
-- allows user to access only specific rows in table
--eg unique product managers can see their own products

-- ( create , update , drop )
select * from Products;
select * from Sales;
select * from City;

Create View 
CitySales
As
Select *, sum(SalesQuantity) as SalesVolume, sum(SalesValue) as SalesAmount
from 
City c
FULL JOIN
Sales s 
on
c.CityID = s.CityID
group by s.ProductID;

select * from CitySales;

DROP view CitySales