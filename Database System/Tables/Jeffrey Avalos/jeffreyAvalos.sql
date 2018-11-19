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

INSERT INTO transactions VALUES(129812, '2018-11-24', '2018-12-25', 'P01', '2144', 'Cash', 'E1', 'GHIB7253', 1 ,968.00);
INSERT INTO transactions VALUES(456142, '2018-10-30', '2018-12-25', 'P08', '1441', 'Credit', 'E2', 'GHIB7253', ,978.00);
INSERT INTO transactions VALUES(619272, '2018-01-24', '2018-11-21', 'P01', '7316', 'Cash', 'E5', 'GHIB7253', 1 ,968.00);
INSERT INTO transactions VALUES(456784, '2018-03-02', '2018-11-13', 'P09', '2144', 'Cash', 'E6', 'GHIB7253', 3 , 913.00);
INSERT INTO transactions VALUES(415478, '2018-03-05', '2018-10-30', 'P02', '1114', 'Cash', 'E2', 'GHIB7253', 3, 913.00);
INSERT INTO transactions VALUES(871871, '2018-10-11', '2018-10-25', 'P03', '2144', 'Credit', 'E4', 'GHIB7253', ,978.00);
INSERT INTO transactions VALUES(924595, '2018-11-12', '2018-11-13', 'P07', '2136', 'Cash', 'E4', 'GHIB7253', 4, 948.00);
INSERT INTO transactions VALUES(118285, '2018-11-30', '2018-12-12', 'P04', '7316', 'Check', 'E1', 'GHIB7253', 1, 968.00);
INSERT INTO transactions VALUES(118652, '2018-09-30', '2018-12-31', 'P05', '1114', 'Credit', 'E2', 'GHIB7253', 2, 973.00);
INSERT INTO transactions VALUES(118652, '2018-09-30', '2018-12-31', 'P06', '2136', 'Check', 'E1', 'GHIB7253', , 978.00);
INSERT INTO transactions VALUES(118652, '2018-01-02', '2018-02-01', 'P09', '2136', 'Credit', 'E3', 'GHIB7253', 3, 913.00);


CREATE TABLE Charges(
charge_ID   VARCHAR(8) PRIMARY KEY,
title   VARCHAR(8) NOT NULL, 
amount  DECIMAL(9,2) NOT NULL, 
desciption VARCHAR(10) NOT NULL 
);

