-- DDL STATEMENTS(Create,ALter,Drop)

	--CREATE
	Create Table 
	CitySAXX 
	(
	[CityID][Int] Identity(1,1),
	[CityCode][varchar](10),
	[CityName][varchar](10),
	[PopulationType][varchar](10)
	)
	
	Insert into CitySAXX 
	(CityCode,CityName,PopulationType)
	values
	(69,'sohor','mojah');

	Select * from CitySAXX --city id automatically gets updated cuz identity

	--another way to create tables using Select *  Into
	Select * Into NotunKolaTable 
	from Products
	where color='Black';
	Select * from NotunKolaTable;


-- ALTER (add, drop or change dtypes of cols)
Alter table Products
add [Price][decimal](10,2);

Select * from Products;

Alter table [Products]
Alter column [Price][int];

Alter table [Products]
drop column Price;


-- DROP ( DROP table <tablename> )
Drop Table NotunKolaTable;