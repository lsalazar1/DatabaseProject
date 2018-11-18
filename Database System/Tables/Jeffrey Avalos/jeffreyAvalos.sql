CREATE TABLE Transaction (
orderID   INT PRIMARY KEY,
bookingDate   DATE NOT NULL, 
departureDate  DATE NOT NULL, 
passenger_ID  VARCHAR(8) NOT NULL REFERENCES Passengers(PsID), 
flightNo   INT(4) NOT NULL, 
types     VARCHAR(10) NOT NULL, 
employee_ID       VARCHAR(4) NOT NULL  REFERENCES employees(employee_ID), 
charge_ID   VARCHAR(8) NOT NULL REFERENCES Charges(charge_ID), 
Discount_ID   INT NOT NULL   REFERENCES Discounts(DiscountId), 
total     INT NOT NULL

);

create table Passengers(
    PsID INT PRIMARY Key,
    Name VARCHAR (32) NOT NULL,
    Address VARCHAR (64) NOT NULL,
    Age INT NOT NULL,
    Nationality VARCHAR (16) NOT NULL,
    Contacts INT  REFERENCES ContactDetails(ConID)

);

Insert INTO Passengers VALUES(1,'Jimmy John','Bumpy Rd, Prairie View Tx',45,'USA',1);

INSERT INTO Charges VALUES('5D22B1D5', 'Security', 150.00, 'Security Fee');
INSERT INTO Charges VALUES('GHIB7253', 'Airline', 500.00, 'Airline ticket');
INSERT INTO Charges VALUES('4F5D458W', 'Food', 50.00, 'Complementary Food');
INSERT INTO Charges VALUES('54FDH5JW', 'Tax', 88.00, 'Taxes');
INSERT INTO Charges VALUES('ZRTG5825', 'Bags', 100.00, 'Luggage Fee');
INSERT INTO Charges VALUES('54DF78ED', 'Insurance', 90.00, 'Insurance Charge');

INSERT INTO transactions VALUES('129812', '2018-11-24', '2018-12-25', '', '');



CREATE TABLE Charges(
charge_ID   VARCHAR(8) PRIMARY KEY,
title   VARCHAR(8) NOT NULL, 
amount  DECIMAL(9,2) NOT NULL, 
desciption VARCHAR(10) NOT NULL 
);

