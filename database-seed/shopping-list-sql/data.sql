USE [Shopping_List_Database];

BEGIN TRANSACTION;

insert into Product_Category (Product_Category_Name, Product_Category_Description)
Values ('warzywa i owoce',''),
		('woda i napoje',''),
		('s³odycze i przekaski',''),
		('przyprawy,sosy,dodatki',''),
		('pieczywo',''),
		('nabial',''),
		('mieso i wedliny',''),
		('chemia gospodarcza',''),
		('higiena',''),
		('mrozonki i lody',''),
		('tluszcze',''),
		('kawa, herbata',''),
		('dania gotowe',''),
		('art. sypkie,', '');

insert into Product (Product_Name,Product_Price,Product_Description,Product_Category_ID)
Values ('Pomidor 1KG', 6.99, '', 1),
		('Salata Lodowa', 4.99, '', 1),
		('Ziemniaki 1KG', 3.99, '', 1),
		('Kabanosy Tarczynski Exclusive Wolowe 90g', 7.99, '',7),
		('Jajka 10szt', 5.99, '', 6),
		('Ser Cheddar 300g', 10, '',6),
		('Kajzerka z Ziarnami', 1.50, '',5),
		('Oliwa z Oliwek 500ml', 20, '',11),
		('Maslo Extra 3.6%', 9.99, '', 11),
		('Cukier 1KG' , 12.50, '', 14),
		('Czekolada Milka Oreo 100g',7.99,'', 3),
		('Pepsi ZERO 1.5L',9.50,'', 2 ),
		('Czekolada Toblerone 100g',12.50,'',3 ),
		('Lody Zielona Budka Pistacjowe 1L',20,'',10 ),
		('Batonik Proteinowy Go On  Waniliowy 50g',4.50,'', 3 ),
		('Kawa Costa 1Kg',100,'',12 ),
		('Woda Muszynianka 1.5L',4.20,'',2 ),
		('Frytki Mrozone Steak House',15,'',10 ),
		('Lod Grycan Smietankowy 1L',16.50,'',10 ),
		('Sok Grand Multiwitamina 1,5L',2.16,'',2 ),
		('Sos Roleski Habanero 350g',10,'Bardzo ostry', 4 ),
		('Szynka D³ugodojrzewaj¹ca 1KG',30,'',7 ),
		('Draze Marynarze 75g',2.99,'',3 ),
		('Draze Korsarze 75g',2.99,'',3 ),
		('Jogurt Waniliowy Skyr Piatnica 330ml',5.99,'',6 ),
		('Jogurt Truskawka Kiwi Skyr Piatnica 330ml',5.99,'',6 );

insert into Shopping_List (List_Name)
Values ('Wczorajsze_Zakupy'),
		('Zakupy_Na_Jutro');

insert into Shopping_List_Elements (List_ID, Product_ID, Product_Quantity)
Values (2, 12, 4),
		(2, 15, 6),
		(2, 17, 12),
		(2, 16, 1),
		(2, 10, 1),
		(2, 25, 4),
		(2, 14, 2),
		(2, 8, 1),
		(2, 7, 6),
		(2, 6, 2),
		(2, 2, 2),
		(2, 1, 1),
		(2, 4, 3),
		(2, 11, 4),
		(2, 22, 2),
		(2, 18, 2);

COMMIT TRANSACTION;