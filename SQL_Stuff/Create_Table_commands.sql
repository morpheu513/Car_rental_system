CREATE DATABASE [Car_rental]

CREATE TABLE Driver_Details
(
  Driver_ID INT NOT NULL,
  Name CHAR(20) NOT NULL,
  Email VARCHAR(25) NOT NULL,
  Address VARCHAR(45) NOT NULL,
  Gender CHAR(1) NOT NULL CHECK(Gender='M' OR Gender='F' OR Gender='O'),
  DOB DATE NOT NULL,
  PhNo VARCHAR(10) NOT NULL,
  Rating FLOAT NOT NULL,
  PRIMARY KEY (Driver_ID)
);

CREATE TABLE Admin
(
  Admin_ID INT NOT NULL,
  Name CHAR(20) NOT NULL,
  Password VARCHAR(10) NOT NULL,
  PRIMARY KEY (Admin_ID)
);

CREATE TABLE Customer_Details
(
  Customer_ID INT NOT NULL,
  Name CHAR(20) NOT NULL,
  Gender CHAR(1) NOT NULL CHECK(Gender='M' OR Gender='F' OR Gender='O'),
  PhNo VARCHAR(10) NOT NULL,
  DOB DATE NOT NULL,
  Address VARCHAR(45) NOT NULL,
  Occupation CHAR(10) NOT NULL,
  Email VARCHAR(25) NOT NULL,
  PRIMARY KEY (Customer_ID)
);

CREATE TABLE Vehicle_Details
(
  Vehicle_ID INT NOT NULL,
  Vehicle_RegNo VARCHAR(10) NOT NULL,
  Odometer INT NOT NULL,
  Availability CHAR(1) NOT NULL CHECK(Availability='Y' OR Availability='N'),
  PRIMARY KEY (Vehicle_ID)
);

CREATE TABLE Vehicle_Type
(
  Type VARCHAR(10) NOT NULL,
  Cost_Per_Km FLOAT NOT NULL,
  Required_Deposit FLOAT NOT NULL,
  Vehicle_ID INT NOT NULL,
  FOREIGN KEY (Vehicle_ID) REFERENCES Vehicle_Details(Vehicle_ID)  ON UPDATE CASCADE
);

CREATE TABLE Booking_Details
(
  Booking_ID INT NOT NULL,
  Booking_status CHAR(10) NOT NULL,
  Security_Deposit INT NOT NULL,
  Amount FLOAT NOT NULL,
  Date DATE NOT NULL,
  Booking_Period VARCHAR(10) NOT NULL,
  Destination CHAR(15) NOT NULL,
  Customer_ID INT NOT NULL,
  Driver_ID INT NOT NULL,
  Vehicle_ID INT NOT NULL,
  PRIMARY KEY (Booking_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customer_Details(Customer_ID)  ON UPDATE CASCADE,
  FOREIGN KEY (Driver_ID) REFERENCES Driver_Details(Driver_ID)  ON UPDATE CASCADE,
  FOREIGN KEY (Vehicle_ID) REFERENCES Vehicle_Details(Vehicle_ID)  ON UPDATE CASCADE
);

CREATE TABLE Bill
(
  Bill_No INT NOT NULL,
  Amount FLOAT NOT NULL,
  Admin_ID INT NOT NULL,
  Booking_ID INT NOT NULL,
  PRIMARY KEY (Bill_No),
  FOREIGN KEY (Admin_ID) REFERENCES Admin(Admin_ID)  ON UPDATE CASCADE,
  FOREIGN KEY (Booking_ID) REFERENCES Booking_Details(Booking_ID)  ON UPDATE CASCADE
);

CREATE TABLE Payment
(
  Balance FLOAT NOT NULL,
  Amount FLOAT NOT NULL,
  Bill_No INT NOT NULL,
  FOREIGN KEY (Bill_No) REFERENCES Bill(Bill_No)  ON UPDATE CASCADE
);
