-- NEsted queries ..returns data(s) to the main query
Select SalesOrderNumber,SubTotal,OrderDate,
	(Select Sum(OrderQty)
	from Sales.SalesOrderDetail
	Where SalesOrderID=43659)
	AS Total_Quantity
From Sales.SalesOrderHeader
where SalesOrderID=43659;