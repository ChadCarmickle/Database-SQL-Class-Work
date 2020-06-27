/* Question 2.1  */ 
Select SKU, SKU_Description
FROM Inventory; 

/* 	Question 2.2		*/ 
SELECT DISTINCT WarehouseID
FROM Inventory;
	
/* 	Question 2.2		*/ 
SELECT WarehouseID, SKU, SKU_Description, QuantityonHand, QuantityonOrder
FROM Inventory;

/* 	Question 2.22		*/ 
SELECT *
FROM Inventory;

/* 	Question 2.23		*/ 
SELECT * 
FROM Inventory 
WHERE QuantityonHand > 0; 

/*  Question 2.26	    */ 

Select SKU, SKU_Description, WarehouseID
FROM Inventory 
WHERE QuantityonHand > 0 
ORDER BY WarehouseID DESC, SKU ASC; 

/*  Question 2.29	    */ 

Select SKU, SKU_Description, WarehouseID, QuantityonHand
FROM Inventory 
WHERE QuantityonHand > 1 AND QuantityonHand < 10;  

/*  Question 2.31	    */ 

Select DISTINCT SKU, SKU_Description 
FROM Inventory
WHERE SKU_Description LIKE 'Half-Dome%'



/*  Question 2.45	    */ 
Select SKU, SKU_Description, WarehouseID 
From Inventory
WHERE WarehouseID IN (SELECT WarehouseID FROM WAREHOUSE WHERE Manager = 'Lucille Smith' ); 



/*  Question 2.51	    */ 
SELECT Warehouse.WarehouseID, Warehouse.WarehouseID, Warehouse.WarehouseCity, Warehouse.WarehouseState, 
Warehouse.Manager, SKU, SKU_Description, QuantityonHand
FROM Warehouse INNER JOIN Inventory
ON  Warehouse.WarehouseID = Inventory.WarehouseID

WHERE Warehouse.Manager = 'Lucille Smith';

/*  Question 2.55	    */ 
SELECT Warehouse.WarehouseID, Warehouse.WarehouseID, Warehouse.WarehouseCity, Warehouse.WarehouseState, 
Warehouse.Manager, SKU, SKU_Description, QuantityonHand
FROM Warehouse LEFT JOIN Inventory
ON  Warehouse.WarehouseID = Inventory.WarehouseID
