use Cape_Codd	

/* Chad 
   8/28/17 
   DBNS 110
   Version 1.0 
     
*/ 
CREATE TABLE Practice  (
	ID			Integer 		NOT NULL,
	Name		varchar(25) 	NOT NULL,
	Age			integer 		NULL,
    CONSTRAINT ID_PK PRIMARY KEY (ID)
); 

SELECT * FROM Retail_Order; 

SELECT * From Practice; 

INSERT INTO Practice Values (123, 'Lisa Frank', 28); 