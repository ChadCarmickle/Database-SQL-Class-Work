USE PizzaPalace_Chad_Charmickle_Brandyn_Magers
GO
--1.
SELECT CustomerFirstName, CustomerLastName, CustomerNum, ZipCode from Household;
--2.
SELECT * from Household WHERE ZipCode NOT LIKE (98002);
--3.
SELECT * from Household WHERE StreetAddress1 IS NOT NULL;
--4.
SELECT * from Menu WHERE ItemPrice < 10;
--5.
SELECT * from Menu WHERE ItemPrice > 5 and ItemPrice < 8.50;
--6. 
SELECT * from Household Where CustomerLastName NOT LIKE 'L%'; ----------------------
--7.
CREATE VIEW [ProductAVG] AS
SELECT SUM(ItemPrice) AS ItemPriceSum
FROM Menu GROUP BY MenuID;
--8.
CREATE VIEW [ProductHP] AS
SELECT MenuID, Max(ItemPrice)
FROM Menu;
--9.
CREATE VIEW [Order_#1003] AS
SELECT OrderID, OrderPrice
FROM Orders
Where Orders.OrderID = (1003);
--10.
CREATE VIEW [Question_#10] AS
SELECT MenuID, Size, ItemPrice
FROM Menu
SELECT OrderID --USe a join
FROM Orders
WHERE Orders.OrderID = (1000)
--11.
-------------
--12.
UPDATE Menu
Set ItemPrice = 2.50, ItemPrice = 4.50
Where MenuID = 4;

Update Menu
Set ItemPrice = 4.50 Where MenuID = 'CheeseS';

--13.
INSERT INTO Household (CustomerNum, CustomerLastName, CustomerFirstName, ZipCode, StreetAddress1, StreetAddress2, City, States)
	Values (1239490555,		'Chad',	'Carmickle',		98001, 	 '3605 gray fox drive',  NULL, NULL, NULL)
INSERT INTO Orders (MenuID, Quantity, OrderPrice) VALUES ('PizzaL', 4, 45.00);
INSERT INTO Sales (OrderID, CustomerNum, SalesID, EmployeeID)VALUES (1239490555, 343434343, 'BTaylo2010');


select * from orders;