USE[Car_rental]
GO

INSERT INTO Driver_Details VALUES(1001,'Ramesh','ramesh1@gmail.com','No 12 , BTMLayout , Bangalore-56','M','1985-04-17','9905766657',8.5);
INSERT INTO Driver_Details VALUES(1002,'Suresh','suresh_234@gmail.com','No 24 JPnagar , Bangalore-34','M','1965-08-29','9237581134',7.5);
INSERT INTO Driver_Details VALUES(1003,'Dinesh','di_nesh@gmail.com','No 45 , HKLayout , Manglore-12','M','1978-01-30','9905736472',9.5);
INSERT INTO Driver_Details VALUES(1004,'Kiran','k_i_ran@gmail.com','No 234 , HRBR Layout , Bangalore-87','M','1956-05-23','9905573897',7.8);
INSERT INTO Driver_Details VALUES(1005,'Roshan','roshan-8@yahoo.com','No 23 , MG road, Hubli-10','M','1989-04-17','9905763697',8.9);
INSERT INTO Driver_Details VALUES(1006,'Robert','rob2345@gmail.com','No 128 , ParappanaAgrahara , Bangalore-23','M','1967-09-07','8908596657',9.1);
INSERT INTO Driver_Details VALUES(1007,'Nitin','nitin_90@hotmail.com','No 112 , Jayanagar , Bangalore-85','M','1990-06-17','7905728357',8.1);

INSERT INTO Admin VALUES(1,'Suhas','doto_1');
INSERT INTO Admin VALUES(2,'Amogh','kirik_123');
INSERT INTO Admin VALUES(3,'Shashank','hello-34');
INSERT INTO Admin VALUES(4,'Rohan','l_l_l_1');
INSERT INTO Admin VALUES(5,'Siddart','olo?th');

INSERT INTO Customer_Details VALUES(2010,'Rishab Kashyap','M','7564902842','1995-06-15','No 76 , Chandra Layout , Bangalore-47','Engineer','rishab_909@hotmail.com');
INSERT INTO Customer_Details VALUES(2011,'Shreya','F','7564903895','2000-05-25','No 223B , Jayanagar , Bangalore-56','Architect','Shreya_12@gmail.com');
INSERT INTO Customer_Details VALUES(2012,'Meera Kumar','F','7564903649','1998-08-08','No 92 , BTM Layout , Bangalore-78','Musician','meera45@yahoomail.com');
INSERT INTO Customer_Details VALUES(2013,'Ashok Kumar','M','9964991842','1970-04-21','No 24 , Rajajinagar , Bangalore-76','Actor','ashok70@hotmail.com');
INSERT INTO Customer_Details VALUES(2014,'Rishit Chauhan','M','8564902842','1999-10-27','No 221 , Vijaynagar , Bangalore-80','Engineer','rishit_45@hotmail.com');

INSERT INTO Vehicle_Details VALUES(3001,'KA05MG3049',25699,'Y');
INSERT INTO Vehicle_Details VALUES(3002,'KL06HG3659',2634,'Y');
INSERT INTO Vehicle_Details VALUES(3003,'KA31MF5490',8949,'Y');
INSERT INTO Vehicle_Details VALUES(3004,'KA05HK9720',50505,'N');
INSERT INTO Vehicle_Details VALUES(3005,'KA51KB8302',12943,'N');
INSERT INTO Vehicle_Details VALUES(3006,'KA04DF4031',15433,'N');
INSERT INTO Vehicle_Details VALUES(3007,'KA01KJ2839',2545,'N');

INSERT INTO Vehicle_Type VALUES('SUV',12.8,3000,3001);
INSERT INTO Vehicle_Type VALUES('MUV',15,3000,3002);
INSERT INTO Vehicle_Type VALUES('SUV',16.5,3000,3003);
INSERT INTO Vehicle_Type VALUES('Sports',26,7000,3004);
INSERT INTO Vehicle_Type VALUES('HatchBack',10.5,2000,3005);
INSERT INTO Vehicle_Type VALUES('SUV',19,4000,3006);
INSERT INTO Vehicle_Type VALUES('HatchBack',9.5,1000,3007);

INSERT INTO Booking_Details VALUES(5001,'Approved',7000,20000,'2020-05-14','3 Days','Mumbai',2010,1001,3004);
INSERT INTO Booking_Details VALUES(5002,'Approved',2000,13000,'2020-05-10','4 Days','Mysore',2011,1002,3005);
INSERT INTO Booking_Details VALUES(5003,'Approved',4000,6000,'2020-05-12','2 Days','Mumbai',2012,1003,3006);
INSERT INTO Booking_Details VALUES(5004,'Approved',1000,7000,'2020-05-16','1 Day','Bangalore',2013,1004,3007);
INSERT INTO Booking_Details VALUES(5005,'Waiting',3000,10000,'2020-05-14','3 Days','Manglore',2014,1001,3003);

INSERT INTO Bill VALUES(6001,20000,1,5001);
INSERT INTO Bill VALUES(6002,13000,2,5002);
INSERT INTO Bill VALUES(6003,6000,1,5003);
INSERT INTO Bill VALUES(6004,7000,3,5004);

INSERT INTO Payment VALUES(0,20000,6001);
INSERT INTO Payment VALUES(0,13000,6002);
INSERT INTO Payment VALUES(0,6000,6003);
INSERT INTO Payment VALUES(0,7000,6004);