-- Datetime data types
Declare @myDate date = '02-02-1999';
Select @myDate as ajirxomoi;

Declare @koti datetime = '28-02-1999';
Select @koti as birthday;

Declare @mytime time='16:25:42.1214'
select @mytime as MyTime

Declare @mytime time(2)='16:25:42.1214'
select @mytime as MyTime

-- Character dtypes
	-- Char : fixe datalength
	DECLARE @MYCHAR CHAR(20)='RAJKHOWA'
	SELECT @MYCHAR AS CHAR, DATALENGTH (@MYCHAR) AS DATALENGTH,
	LEN(@MYCHAR) AS LEN

	-- vARCHAR : VARIABLE DATALENGTH
	DECLARE @MYVAR VARCHAR(20)='RAJKHOWA'
	SELECT @MYVAR AS VARCHAR, DATALENGTH (@MYVAR) AS DATALENGTH,
	LEN(@MYVAR) AS LEN


-- UNICODE DTYPES
	--NCHAR(N) : 2 BYTES PER N
	DECLARE @MYNCHAR NCHAR(20)='RAJKHOWA'
	SELECT @MYNCHAR AS NCHAR, DATALENGTH (@MYNCHAR) AS DATALENGTH,
	LEN(@MYNCHAR) AS LEN

	--NVARCHAR(N) : 2BYTES OF PER LEN
	DECLARE @MYNVARCHAR NVARCHAR(20)='RAJKHOWAAA'
	SELECT @MYNVARCHAR AS NCHAR, DATALENGTH (@MYNVARCHAR) AS DATALENGTH,
	LEN(@MYNVARCHAR) AS LEN

-- NUMERIC DTYPE
	-- pRECISION AND RECALL (P,R)
	DECLARE @NUMERIC NUMERIC(10,3)=12345.3216  -- FLOAT (read in notes)
	SELECT @NUMERIC AS NUMERIC




-- Filter Data : where clause
select * from HumanResources.Employee 
where SickLeaveHours>50

select * from Sales.CreditCard where ExpYear=2008 and ExpMonth in (1,2,3)

select * from Sales.CreditCard where ExpYear between 2001 and 2005

select * from Sales.CreditCard where CardType like '%Card'


--Exercise
select PurchaseOrderDetailID from Purchasing.PurchaseOrderDetail 
where OrderQty-ReceivedQty>50

select purchaseAMT=UnitPrice * ReceivedQty from Purchasing.PurchaseOrderDetail 
where OrderQty-ReceivedQty>50

-- complex logical Operators (all,any,exists,some)
Select * from Production.ProductSubcategory