-- Constrains : Rules applied for data consistency and data integrity
-- (Not NULL, Default, Unique, Primary,FOreign, Check) 

-- NOT NULL 
Create Table Employeee
(
	EMPID int IDENTITY	(1,1),
	EmpName varchar(100) NOt NULL,
	Gender varchar(8),
	StartDate date NULL,
	EndDate date NULL
)
Select * from Employeee;
Alter Table Employeee
alter column Gender varchar(8) NOT NULL;

Alter Table Employeee
add HIREDATE date NOT NULL;
Drop table Employeee;

-- Default 
Alter table Person.Password
add TURULOV varchar  Default 'oi oi' ;

Select * from Person.Password;

Create table productt
(	ProductID int Identity(1,1),
	ProductName varchar(100) Not Null,
	ProductCode varchar(20) Not Null ,
	Color varchar(20) NULL Constraint df_color Default 'Black',
	Price decimal(5,2) NULL,
	Constraint c_productt CHECK (Price>150)
);




-- UNIQUE 
Create Table Employeee
(
	EMPID int IDENTITY	(1,1),
	EmpName varchar(100) NOt NULL,
	Gender varchar(8),
	StartDate date NULL,
	EndDate date NULL,
	CONSTRAINT nameofconstraint UNIQUE(EMPID,EMPNAME)
)

Alter table Employeee 
drop Constraint nameofconstraint;


-- PRIMARY KEY (same syntax as unique) : table can have only one primary key
Create table productt
(
	ProductName varchar(100) Not Null,
	ProductCode varchar(20) Not Null ,
	Color varchar(20),
	Price decimal(5,2),
	Constraint PrimKey1 Primary Key (ProductCode)
);
Select * from productt;
Drop Table productt;

-- FOREIGN KEY
--syntax: <primary/unique syntax> + References <primarytablename> (<primarykeycol>)



-- CHECK CONSTRAINT
Create table productt
(	ProductID int Identity(1,1),
	ProductName varchar(100) Not Null,
	ProductCode varchar(20) Not Null ,
	Color varchar(20) NULL,
	Price decimal(5,2) NULL,
	Constraint c_productt CHECK (Price>150)
);
Drop table productt;
