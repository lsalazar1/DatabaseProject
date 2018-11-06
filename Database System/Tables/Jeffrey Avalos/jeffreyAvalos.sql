CREATE TABLE Transaction (
orderID   INT PRIMARY KEY,
bookingDate   DATE NOT NULL, 
departureDate  DATE NOT NULL, 
passenger_ID  VARCHAR(8) NOT NULL, 
flightNo   INT(4) NOT NULL, 
types     VARCHAR(10) NOT NULL, 
employee_ID       VARCHAR(4) NOT NULL, 
charge_ID   VARCHAR(8) NOT NULL, 
Discount_ID   INT NOT NULL, 
total     INT NOT NULL, 
CONSTRAINT fk_TransactionPassenger FOREIGN KEY (passenger_ID)
    REFERENCES Passenger(passenger_ID])
CONSTRAINT fk_TransactionEmployee FOREIGN KEY (employee_ID)
    REFERENCES employees(employee_ID)
CONSTRAINT fk_TransactionCharges FOREIGN KEY (charge_ID)
    REFERENCES Charges(charge_ID)
CONSTRAINT fk_TransactionDiscount FOREIGN KEY (Discount_ID)
    REFERENCES Discount(DiscountId) // this might be wrong.
CONSTRAINT fk_TransactionFlightNo FOREIGN KEY (flightNo)
    REFERENCES FlightSchedule(FS_ID) 
       
);
CREATE TABLE Passenger (
orderID   INT PRIMARY KEY,
passenger_ID  VARCHAR(8) PRIMARY KEY, 
flightNo   INT(4) NOT NULL, 
address   VARCHAR(20) NOT NULL, 
age     INT(3) NOT NULL, 
citizenship  VARCHAR(15) NOT NULL, 
contactID     VARCHAR(10) NOT NULL, 
CONSTRAINT fk_ContactDetails FOREIGN KEY (contactID)
    REFERENCES Contact_Details(cnID)
);
CREATE TABLE Charges(
charge_ID   VARCHAR(8) PRIMARY KEY,
title   VARCHAR(8) NOT NULL, 
amount  DECIMAL(9,2) NOT NULL, 
desciption VARCHAR(10) NOT NULL, 
);

