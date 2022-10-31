-- USEFUL OPERATIONS : DISTINCT, TOP N ()with ties, Sorting, ALIAS , NULL

select * from Person.Address
-- DISTINCT 
select Distinct City,PostalCode from Person.Address

-- TOP N + with ties
select top 10 with ties DueDate,ProductID,RejectedQty
from Purchasing.PurchaseOrderDetail 
order by RejectedQty DESC

-- Sorting Results : Order by
select Distinct GroupName from HumanResources.Department 
order by GroupName  DESC

-- UNION & UNION ALL (duplicates included)
Select DueDate,ProductID,OrderQty from Purchasing.PurchaseOrderDetail 
where OrderQty>500
UNION
Select DueDate,ProductID,OrderQty from Production.WorkOrder
Where OrderQty>500

--NULL Values Comparision
Select ProductName,color where ISNULL(color,'RED')='RED'

Select AddressLine1,ISNULL(AddressLine2,AddressLine1)
from Person.Address	



-- ALIAS : temporary displays
Select *
from Person.Address

Select (AddressLine1+ ','+ City + ',' + PostalCode) as Address
from Person.Address