-- JOINS (on primary keys)
-- (inner,left,eight.full,self,cartesian)

-- INNER JOIN
Select * from City
Select * from Sales

Select c.PopulationDensity, SUM(SalesValue) as TotalSales, SUM(SalesQuantity) as TotalQuantity
from Sales s
inner join
City c
on c.CityID=s.CityID
Group by c.PopulationDensity

Select * from Sales


-- LEFT JOIN ( and LEFT EXCLUDING JOIN) 
Select c.CityName , ISNULL(SUM(SalesValue),0) as TotalSales,
ISNULL(SUM(SAlesQuantity),0) as TotalQuantity
from 
City c
left join
Sales s
ON
c.CityID = s.CityID
Group by c.CityName;

-- left exculding join syntax - <prev> + where <righttable>.<colname> IS NULL

--RIGHT JOIN ( +right excluding join)
Select c.CityName , ISNULL(SUM(SalesValue),0) as TotalSales,
ISNULL(SUM(SAlesQuantity),0) as TotalQuantity
from 
City c
right join
Sales s
ON
c.CityID = s.CityID
Group by c.CityName;

-- FULL JOIN ( + full excluding join)
Select * from Sales s 
FULL JOIN
Products p
on
s.ProductID=p.ProductID;

-- SELF JOIN
select e1.emp_id, e1.emp_name,e1.dt_of_join, 
e2.emp_name
from
Employee e1
Left Join
Employee e2
on
e1.emp_manager = e2.emp_id

-- Cartesian Joins (CROSS JOINS : multiplication for all combinations)
Select D.Name ,
S.Name,S.StartTime, S.EndTime
from 
HumanResources.Department D , HumanResources.Shift S

