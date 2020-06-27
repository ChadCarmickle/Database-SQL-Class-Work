USE PizzaPalace_Chad_Charmickle_Brandyn_Magers
GO

CREATE TABLE Employees (
	EmployeeID			VARCHAR(25) NOT NULL,
	EmployeeFirstName	VARCHAR(25) NOT NULL,
	EmployeeLastName	VARCHAR(25) NOT NULL,
	HireDate			VARCHAR(25) NOT NULL,
	CONSTRAINT		EmployeeID_Relates PRIMARY KEY (EmployeeID)
);


CREATE TABLE Household (
	CustomerNum			INTEGER		 		NOT NULL,
	CustomerFirstName	VARCHAR(25)			NOT NULL,
	CustomerLastName	VARCHAR(25) 		NOT NULL,
	ZipCode				INTEGER				NOT NULL,
	StreetAddress1		VARCHAR(50)			Not NULL,
	StreetAddress2		VARCHAR(25)			NULL,
	City				VARCHAR(25)			NULL,
	States				VARCHAR(25)			NULL,
CONSTRAINT CustomerNum_Relates			PRIMARY KEY (CustomerNum), 
CONSTRAINT ZipCode_Restrictions			CHECK (ZipCode IN('98001','98002','98003'))

);
CREATE TABLE Menu ( 
	MenuID				VARCHAR(8)		Not Null, 
	Size				Varchar(25)		Not Null, 
	Category			VARCHAR(20)		Not Null, 
	ItemPrice			NUMERIC(8,2)	Not Null, 
CONSTRAINT Menu_ID_Relationship Primary Key(MenuID)  
); 

CREATE TABLE Orders	( 
	OrderID				INTEGER				IDENTITY(1000, 1 )Not Null, 	
	MenuID			    VARCHAR(8)			Not Null, 
	Quantity			INTEGER				Not Null, 
	OrderPrice			INTEGER				Not Null, 
	Times				Varchar(10)			Null, 
Constraint Order_ID_Relationship Primary Key(OrderID), 
CONSTRAINT Menu_ID_FK FOREIGN KEY (MenuID) REFERENCES Menu (MenuID) 
);   

CREATE TABLE Sales (
	SalesID			INTEGER			NOT NULL,
	EmployeeID		VARCHAR(25)		NOT NULL,
	CustomerNum		INTEGER			NOT NULL,
	OrderID			INTEGER			NOT NULL,
	CONSTRAINT		SalesID_Relates		PRIMARY KEY (SalesID),
	CONSTRAINT		EmployeeID_Sales	FOREIGN KEY(EmployeeID) References	Employees (EmployeeID),	 
	CONSTRAINT		CustomerNum_Household	FOREIGN KEY(CustomerNum) References	Household (CustomerNum),	 
	CONSTRAINT		OrderID_Sales		FOREIGN KEY(OrderID) References	Orders (OrderID)	 
);


-- To make a insert Bulk 
INSERT INTO Employees (EmployeeID, EmployeeFirstName, EmployeeLastName, HireDate)
-- Taking the table, attrbutes inside table, 

	-- The EmployeeID, Name, Last Name, HireYear
	VALUES ( 'CManni2012', 'Carol', 'Manning', '2012'),
			('BTaylo2010', 'Bob', 'Taylor', '2010'),
			('SKrist', 'Stephen', 'Kristoph', '2014');   
	
	
INSERT INTO Menu (Menu.MenuID, Size, Category, ItemPrice)
	VALUES  ('SodaB','2 liter','Beverage', 3.75),
			('CheeseS','8 per pack','Side', 2.50),
			('PizzaS','8 inch','Pizza', 5.35),
			('PizzaM','12 inch','Pizza', 7.35),
			('PizzaL','18 inch','Pizza', 13.50),
			('SpePS','8 inch','Pizza', 6.35),
			('SpePM','12 inch','Pizza', 9.25),
			('SpePL','18 inch','Pizza', 15.00),
			('AddTo','1 cup','Extra', 1.00);

INSERT INTO Orders (MenuID, Quantity, OrderPrice)
	VALUES	('SpePM',1, 7.35),
			('SodaB',2, 7.25),
			('CheeseS',1, 2.50),
			('SpePL',1, 15.00),
			('SodaB',2, 7.25),
			('PizzaM',3, 20),
			('PizzaM',1, 7.35),
			('AddTo',4, 4.00),
			('PizzaL',1, 13.50),
			('PizzaM',2, 14.70) ;

INSERT INTO Household (CustomerNum, CustomerLastName, CustomerFirstName, ZipCode, StreetAddress1, StreetAddress2, City, States)

	Values (2065552123,		'Stephen',	'Lamon',		98001, 	 '161 South Western Ave',  NULL,		 NULL,		NULL			), 
	       (2065553252,		'Mark', 	'Johnston',		98001,	 '1215 Terrace Avenue',   'Apt. 304',	'Seattle', 'WA'		), 
           (2065552963,		'David',	'Lewis',		98002,	 '520 East Lake Way',	   NULL, 		 NULL,		NULL			), 
	       (2065553213,		'Keith',	'Anderson',		98001,	 '222 Southern Street',   'Apt. 10', 	 NULL,		NULL			), 
	       (2065552217,		'Kathy',	'Wong',			98002,	 '2832 Washington Ave',    NULL, 		'Seattle', 'WA'		), 
	       (2065556623,		'Angel',	'Jimenez',		98001,	 'Norton Way', 			  'Apt. 13B', 	 NULL,		NULL			); 


