USE [Shopping_List_Database];

Create table Shopping_List (
	List_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	List_Name VARCHAR(70)
);

Create table Product_Category (
	Product_Category_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Product_Category_Name VARCHAR(100),
	Product_Category_Description VARCHAR(500)
);

Create table Product (
	Product_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Product_Name VARCHAR(100),
	Product_Price DECIMAL(10,2),
	Product_Description VARCHAR(500),
	Product_Category_ID INT
);

ALTER table Product
ADD FOREIGN KEY(Product_Category_ID) REFERENCES Product_Category(Product_Category_ID);

Create INDEX IX_Category
ON Product(Product_Category_ID);

Create table Shopping_List_Elements (
	Element_ID INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	List_ID INT,
	Product_ID INT,
	Product_Quantity INT
);

ALTER table Shopping_List_Elements
ADD FOREIGN KEY(List_ID) REFERENCES Shopping_List(List_ID);

ALTER table Shopping_List_Elements
ADD FOREIGN KEY(Product_ID) REFERENCES Product(Product_ID);

Create INDEX IX_List_ID
ON Shopping_List_Elements (List_ID);

Create INDEX IX_Product_ID
ON Shopping_List_Elements (Product_ID);