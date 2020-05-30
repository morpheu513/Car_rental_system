CREATE TABLE Driver_Details
(
  Driver_ID INT NOT NULL,
  Name CHAR NOT NULL,
  Email VARCHAR NOT NULL,
  Address VARCHAR NOT NULL,
  Gander CHAR NOT NULL,
  DOB DATE NOT NULL,
  PhNo INT NOT NULL,
  Rating INT NOT NULL,
  PRIMARY KEY (Driver_ID)
);

CREATE TABLE Admin
(
  Admin_ID INT NOT NULL,
  Name CHAR NOT NULL,
  Password VARCHAR NOT NULL,
  Approved CHAR NOT NULL,
  PRIMARY KEY (Admin_ID)
);

CREATE TABLE Customer_Details
(
  Customer_ID INT NOT NULL,
  Name CHAR NOT NULL,
  Gender CHAR NOT NULL,
  PhNo INT NOT NULL,
  DOB DATE NOT NULL,
  Address VARCHAR NOT NULL,
  Occupation CHAR NOT NULL,
  Email VARCHAR NOT NULL,
  PRIMARY KEY (Customer_ID)
);

CREATE TABLE Vehicle_Details
(
  Vehicle_RegNo INT NOT NULL,
  Vehicle_ID INT NOT NULL,
  Odometer INT NOT NULL,
  Availability CHAR NOT NULL,
  PRIMARY KEY (Vehicle_RegNo)
);

CREATE TABLE Vehicle_Type
(
  Type VARCHAR NOT NULL,
  Cost/Km FLOAT NOT NULL,
  Required_Deposit FLOAT NOT NULL,
  Vehicle_RegNo INT NOT NULL,
  FOREIGN KEY (Vehicle_RegNo) REFERENCES Vehicle_Details(Vehicle_RegNo)
);

CREATE TABLE Booking_Details
(
  Booking_ID INT NOT NULL,
  Booking_status CHAR NOT NULL,
  Security_Deposit INT NOT NULL,
  Driver_Y/N CHAR NOT NULL,
  Amount FLOAT NOT NULL,
  Date DATE NOT NULL,
  Booking_Period VARCHAR NOT NULL,
  Destination CHAR NOT NULL,
  Customer_ID INT NOT NULL,
  Driver_ID INT NOT NULL,
  Vehicle_RegNo INT NOT NULL,
  PRIMARY KEY (Booking_ID),
  FOREIGN KEY (Customer_ID) REFERENCES Customer_Details(Customer_ID),
  FOREIGN KEY (Driver_ID) REFERENCES Driver_Details(Driver_ID),
  FOREIGN KEY (Vehicle_RegNo) REFERENCES Vehicle_Details(Vehicle_RegNo)
);

CREATE TABLE Bill
(
  Bill_No INT NOT NULL,
  Amount FLOAT NOT NULL,
  Admin_ID INT NOT NULL,
  Booking_ID INT NOT NULL,
  PRIMARY KEY (Bill_No),
  FOREIGN KEY (Admin_ID) REFERENCES Admin(Admin_ID),
  FOREIGN KEY (Booking_ID) REFERENCES Booking_Details(Booking_ID)
);

CREATE TABLE Payment
(
  Balance FLOAT NOT NULL,
  Amount FLOAT NOT NULL,
  Bill_No INT NOT NULL,
  FOREIGN KEY (Bill_No) REFERENCES Bill(Bill_No)
);