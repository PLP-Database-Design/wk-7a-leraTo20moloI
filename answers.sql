--Questin 1

CREATE DATABASE(classmates);
USE (classmates);

--Table creation
CREATE TABLE productDetail(OrderID INT , CustomerName VARCHAR(100) , Product VARCHAR(100));

--- Populating table
INSERT INTO ProductDetail(OrderID, CustomerName, Product),
VALUES

(101,'John Doe','Laptop'), 
(101,'John Doe','Mouse'), 
(102,'Jane Smith','Tablet'), 
(102,'Jane Smith','Keyboard'), 
(102,'Jane Smith','Mouse'), 
(103,'Emily Clark','phone'); 

--Viewing table in 1NF
SELECT*FROM ProductDetail;

--Q2
USE (classmates)

--First Table 
CREATE TABLE Orders(OrderID INT PRIMARY KEYS, CustomerName VARCHAR(100));

-- Insert data 

INSERT INTO Orders(OrderID,CustomerName),
VALUES
(101,'John Doe'),
(102,'Jane Smith'), 
(103,'Emily Clark'); 

Second Table
CREATE TABLE OrderDetails(OrderDetail INT AUTO_INCREMENT PRIMARY KEY, OrderID INT, Product VARCHAR(100), Quantity INT,FOREIGN KEY(OrderID) REFERENCES Orders(OrderID));
 --Insert data 
 INSERT INTO OrderDetails(OrderID,Product,Quantity),
 VALUES
(101,'Laptop',2), 
(101,'Mouse',1), 
(102,'Tablet',3), 
(102,'Keyboard',1), 
(102,'Mouse',2), 
(103,'phone',1); 

