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



CREATE TABLE Charges(
charge_ID   VARCHAR(8) PRIMARY KEY,
title   VARCHAR(8) NOT NULL, 
amount  DECIMAL(9,2) NOT NULL, 
desciption VARCHAR(10) NOT NULL 
);

