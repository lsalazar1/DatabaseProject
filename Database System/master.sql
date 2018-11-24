/*
* Once everyone is done with their tables I will copy
* and paste those SQL commands here to create the database
*/

CREATE DATABASE pvairways;

USE pvairways;

-- Creates table for different countries our companies travels to
CREATE TABLE countries (
    country_id VARCHAR(3) PRIMARY KEY NOT NULL,
    country VARCHAR(25) NOT NULL
);

-- Creates table of states
CREATE TABLE states( 
    StID VARCHAR(3) PRIMARY KEY,
    StateName Varchar(32),
    Country Varchar(3),
                   
                   
    CONSTRAINT fk_Country FOREIGN KEY (Country)
    REFERENCES countries (country_id)
);

-- Creates Contact Details Table
create table Contact_Details(
	CnID INT PRIMARY KEY,
	Email VARCHAR(25) NOT NULL,
	Cell VARCHAR(16) NOT NULL,
	Street VARCHAR(64) NOT NULL,
    City VARCHAR(64) NOT NULL,
	States VARCHAR(3) NOT NULL,
	CONSTRAINT fk_State FOREIGN KEY(States) REFERENCES states(StID)
);

-- Creates a table for discounts availible for customers
create table Discounts(
	DiscountId Int PRIMARY KEY,
	Title Varchar(50) NOT NULL,
	Amount INT NOT NULL,
	Description Varchar(255)
);

-- Creates table for different types of air fares available
CREATE TABLE AirFare (
Airfare_ID INT PRIMARY KEY,
DepartFrom Varchar(32),
ArriveTo Varchar(32),
Fare INT 
);

-- Create table for flight schedules
CREATE TABLE FlightSchedule (
FS_ID INT(4) PRIMARY KEY,
Depart Varchar(3) NOT NULL,
Arrive Varchar (3) NOT NULL,
DepartTime Varchar(10) NOT NULL,
ArriveTime Varchar(10) NOT NULL
);

-- Creates table for different branch offices
CREATE TABLE branch (
    branch_ID INT(3) PRIMARY KEY,
    Location VARCHAR(50) NOT NULL,                  -- Location means name of branch (Ex. Copperfield)
    Address VARCHAR(50) NOT NULL,
    City VARCHAR(30) NOT NULL,
    State_ID VARCHAR(3),

    CONSTRAINT fk_BranchState FOREIGN KEY (State_ID)
    REFERENCES states(StID)  
);

-- Creates table for all employees in our company
CREATE TABLE employees(
    employee_ID VARCHAR(4) PRIMARY KEY,
    fullName VARCHAR(50) NOT NULL,
    Branch INT(3) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Phone VARCHAR(25) NOT NULL,

    CONSTRAINT fk_EmployeesBranch FOREIGN KEY (Branch)
    REFERENCES branch(branch_ID)
);

-- Creates table for types of aircraft used by company
CREATE TABLE airCrafts(
	AcID INT Primary Key,
    AcNumber Varchar(32) NOT NULL,
    Capacity INT NOT NULL,
    MfdBy Varchar(128) NOT NULL,
    MfdOn Date NOT NULL
);

-- Creates table for routes
CREATE TABLE routes(
    RtID INT PRIMARY KEY,
    Airport Varchar(32) NOT NULL,
    Destination Varchar(32) NOT NULL,
    RouteCode Varchar(16) NOT NULL UNIQUE
);

CREATE TABLE Passenger (
passenger_ID  VARCHAR(8) PRIMARY KEY,
fName VARCHAR(50) NOT NULL,
lName VARCHAR(50) NOT NULL, 
flightNo   INT(4) NOT NULL, 
age     INT(3) NOT NULL, 
citizenship  VARCHAR(15) NOT NULL, 
contactID     INT NOT NULL,

CONSTRAINT fk_ContactDetails FOREIGN KEY (contactID)
    REFERENCES Contact_Details(cnID),
CONSTRAINT fk_PassengerFlight FOREIGN KEY (flightNo)
    REFERENCES FlightSchedule(FS_ID)
);

CREATE TABLE Charges(
charge_ID   VARCHAR(8) PRIMARY KEY,
title   VARCHAR(256) NOT NULL, 
amount  DECIMAL(9,2) NOT NULL, 
description VARCHAR(256) NOT NULL 
);

CREATE TABLE transactions (
orderID   INT PRIMARY KEY,
bookingDate   DATE NOT NULL, 
departureDate  DATE NOT NULL, 
passenger_ID  VARCHAR(8) NOT NULL, 
flightNo   INT(4) NOT NULL, 
types     VARCHAR(10) NOT NULL, 
employee_ID       VARCHAR(4) NOT NULL, 
charge_ID   VARCHAR(8) NOT NULL, 
Discount_ID   INT, 
total     DECIMAL(5,2) NOT NULL,

CONSTRAINT fk_TransactionPassenger FOREIGN KEY (passenger_ID)
    REFERENCES Passenger(passenger_ID),
CONSTRAINT fk_TransactionEmployee FOREIGN KEY (employee_ID)
    REFERENCES employees(employee_ID),
CONSTRAINT fk_TransactionCharges FOREIGN KEY (charge_ID)
    REFERENCES Charges(charge_ID),
CONSTRAINT fk_TransactionDiscount FOREIGN KEY (Discount_ID)
    REFERENCES Discounts(DiscountId),
CONSTRAINT fk_TransactionFlightNo FOREIGN KEY (flightNo)
    REFERENCES FlightSchedule(FS_ID) 
);

insert into Discounts values(1,'Childrens','10', 'Discount is provided for children under 10 years old.');
insert into Discounts values(2,'Disabilites Discount', '5', 'Discount is provided for customers with disabilites.');
insert into Discounts values(3, 'Senior Discount','65', 'Discount is provided for adutls over the age of 65.');
insert into Discounts values(4,'Deep Pockets Discount', '30','Discount is provided for upgrading to first class.');

INSERT INTO AirFare VALUES (1, 'Atlanta', 'Miami', 128);
INSERT INTO AirFare VALUES (2, 'Los Angeles', 'Houston', 112);
INSERT INTO AirFare VALUES (3, 'Salt Lake City', 'Atlanta', 197);
INSERT INTO AirFare VALUES (4, 'New York City', 'Charlotte', 159);
INSERT INTO AirFare VALUES (5, 'Las Vegas', 'Denver', 154);
INSERT INTO AirFare VALUES (6, 'Houston', 'Toronto', 547);

INSERT INTO FlightSchedule VALUES (2144, 'ATL','MIA','10:30 AM','2:30 PM');
INSERT INTO FlightSchedule VALUES (1441, 'LAX','IAH','7:00 AM', '11:00 AM');
INSERT INTO FlightSchedule VALUES (7316, 'SLC','ATL', '5:00 PM', '9:00 PM');
INSERT INTO FlightSchedule VALUES (1114, 'JFK','CLT', '10:20 AM', '3:55 PM');
INSERT INTO FlightSchedule VALUES (2136, 'LAS','COS','6:00 AM', '8:50 AM');

INSERT INTO countries VALUES('USA', 'United States of America');
INSERT INTO countries Values('CAN', 'Canada');
INSERT INTO countries VALUES('IRE','Ireland');

INSERT INTO states VALUES ('TX', 'Texas','USA');
INSERT INTO states VALUES ('KS','Kansas','USA');
INSERT INTO states VALUES ('CA', 'California','USA');
INSERT INTO states VALUES ('GA', 'Atlanta', 'USA');
INSERT INTO states VALUES ('UT', 'Utah', 'USA');
INSERT INTO states VALUES ('ON', 'Ontario', 'CAN');
INSERT INTO states VALUES ('LEN', 'Leinster', 'IRE');
INSERT INTO states VALUES ('MA', 'Massachusetts', 'USA');
INSERT INTO states VALUES ('PA', 'Pennsylvania', 'USA');

INSERT INTO branch VALUES(936, 'Panther Regional Headquarters', '100 University Dr.', 'Prairie View', 'TX');
INSERT INTO branch VALUES(913, 'Greater Kansas City Branch', '2601 Holmes St.', 'Kansas City', 'KS');
INSERT INTO branch VALUES(599, 'River Park Branch', '71 E Via la Plata', 'Fresno', 'CA');
INSERT INTO branch VALUES(216, 'Katy Branch', '10326 Hartfield Bluff Ln.', 'Cypress', 'TX');
INSERT INTO branch VALUES (570, 'Dunder Mifflen Regional Branch', '1725 Slough Avenue', 'Scranton', 'PA');
INSERT INTO branch VALUES(978, 'Littleton Commons Branch', '550 King St.', 'Littleton', 'MA');
INSERT INTO branch VALUES(617, 'Cambridge Branch', '1 Rogers St.', 'Cambridge', 'MA');

INSERT INTO employees VALUES ('E1', 'Shawn Smith', 936, 'Pilot', 'shawn.smith@pvair.com', '936-459-8159');
INSERT INTO employees VALUES ('E2', 'Domonique Cox', 936, 'CFO', 'domonique.cox@pvair.com', '936-459-9981');
INSERT INTO employees VALUES ('E3', 'Kirk Salazar', 599, 'Security Guard', 'kirk.salazar@pvair.com', '599-459-4786');
INSERT INTO employees VALUES ('E4', 'Abrahan Ramirez', 216, 'Front End Developer', 'abrahan.ramirez@pvair.com', '216-459-5683');
INSERT INTO employees VALUES ('E5', 'Michael Scott', 570, 'Regional Manager', 'michael.scott@pvair.com', '570-459-1234');
INSERT INTO employees VALUES ('E6', 'Lisa Ann', 570, 'Marketing Manager', 'lisa.ann@pvair.com', '570-459-4563');
INSERT INTO employees VALUES ('E7', 'Mary Livingston', 978, 'Backend Developer', 'mary.livingston@pvair.com', '978-459-8909');
INSERT INTO employees VALUES ('E8', 'Leonard Guy', 978, 'Backend Developer', 'leonard.guy@pvair.com', '978-459-4785');
INSERT INTO employees VALUES ('E9', 'Daniel Chadwick', 978, 'Backend Developer', 'Daniel.chadwick@pvair.com', '978-459-9456');
INSERT INTO employees VALUES ('E10', 'Liam Salazar', 599, 'Janitor', 'liam.salazar@pvair.com', '599-459-8453');
INSERT INTO employees VALUES ('E11', 'Hubert Joly', 599, 'Frontend Developer', 'hubert.joly@pvair.com', '599-459-9011');
INSERT INTO employees VALUES ('E12', 'Riley Reid', 617, 'Frontend Developer', 'riley.reid@pvair.com', '978-459-0956');
INSERT INTO employees VALUES ('E13', 'Dwight Scrute', 617, 'Frontend Developer', 'dwight.schrute@pvair.com', '978-459-8746');
INSERT INTO employees VALUES ('E14', 'Toby Flenderson', 617, 'Backend Developer', 'dwight.schrute@pvair.com', '978-459-8746');

INSERT INTO airCrafts VALUES (100, "N379AA", 245, "Boeing", "2004-03-23");
INSERT INTO airCrafts VALUES (101, "N820AL", 372, "Airbus", "2011-06-02");
INSERT INTO airCrafts VALUES (102, "N792AN", 382, "Cessna", "2010-04-13");
INSERT INTO airCrafts VALUES (103, "N722AN", 298, "Embraer", "2008-10-19");

INSERT INTO routes VALUES (10,"Dallas-Ft Worth", "Los Angeles", "KDFW-KLAX");
INSERT INTO routes VALUES (11, "Portland","San Fransico","KPDX-KSFO");
INSERT INTO routes VALUES (12, "Las Vegas","Denver","KLAS-KDEN");
INSERT INTO routes VALUES (13, "Atlanta","New York","KATL-KJFK");

/* Insert different values into their respective tables */
insert into Contact_Details Values(1, 'jimmyjohn@gmail.com', '949-232-4295', 'Bumpy RD', 'Houston', 'TX');
insert into Contact_Details Values(2, 'sallymay@gmail.com', '434-234-6746', 'London St.', 'Burlington', 'MA');
insert into Contact_Details Values(3, 'SeanPratt@yahoo.com', '765-345-2526', 'Champions Rd', 'Somerville', 'MA');
insert into Contact_Details Values(4, 'Mary3822@gmail.com', '855-354-5474', 'Jurica Rd', 'Bakersfield', 'CA');
insert into Contact_Details Values(5, 'Danny0493@gmail.com', '1-800-323-9111', 'PV Lane', 'Prairie View', 'TX');
insert into Contact_Details VALUES(6, 'sandra_1993@hotmail.com', '1-289-600-0796', '945 Simcoe St. North', 'Oshawa', 'ON');
INSERT INTO Contact_Details VALUES(7, 'l.murray@gmail.com', '1 -289-567-9068', 'Liverpool Rd.', 'Pickering', 'ON');
INSERT INTO Contact_Details VALUES(8, 'ryangivlas@gmail.com', '1-289-564-3456', 'Liverpool Rd.', 'Pickering', 'ON');
INSERT INTO Contact_Details VALUES(9, 'hughes123@bulkbarn.com', '1-289-600-9450', 'King St.', 'Ajax', 'ON');


INSERT INTO Passenger VALUES('P01', 'Jimmy', 'John', 2144,  23, 'American', 1);
INSERT INTO Passenger VALUES('P02', 'Sally', 'May', 2144, 42, 'American', 2);
INSERT INTO Passenger VALUES('P03', 'Sean', 'Pratt', 1441, 19, 'American', 3);
INSERT INTO Passenger VALUES('P04', 'Mary', 'Beth', 1441, 50, 'American', 4);
INSERT INTO Passenger VALUES('P05', 'Danny', 'D', 1441, 32, 'American', 5);
INSERT INTO Passenger VALUES('P06', 'Sandra', 'Hayes', 2144, 24, 'Canadian', 6);
INSERT INTO Passenger VALUES('P07', 'Laura', 'Murray', 1441, 26, 'Canadian', 7);
INSERT INTO Passenger VALUES('P08', 'Ryan', 'Givelas', 1441, 26, 'Canadian', 8);
INSERT INTO Passenger VALUES('P09', 'Stephanie', 'Hughes', 2136, 26, 'Canadian', 9);

INSERT INTO Charges VALUES('5D22B1D5', 'Security', 150.00, 'Security Fee');
INSERT INTO Charges VALUES('GHIB7253', 'Airline', 500.00, 'Airline ticket');
INSERT INTO Charges VALUES('4F5D458W', 'Food', 50.00, 'Complementary Food');
INSERT INTO Charges VALUES('54FDH5JW', 'Tax', 88.00, 'Taxes');
INSERT INTO Charges VALUES('ZRTG5825', 'Bags', 100.00, 'Luggage Fee');
INSERT INTO Charges VALUES('54DF78ED', 'Insurance', 90.00, 'Insurance Charge');

INSERT INTO transactions VALUES(129812, '2018-11-24', '2018-12-25', 'P01', '2144', 'Cash', 'E1', 'GHIB7253', 1 ,968.00);
INSERT INTO transactions VALUES(456142, '2018-10-30', '2018-12-25', 'P08', '1441', 'Credit', 'E2', 'GHIB7253', NULL ,978.00);
INSERT INTO transactions VALUES(619272, '2018-01-24', '2018-11-21', 'P01', '7316', 'Cash', 'E5', 'GHIB7253', 1 ,968.00);
INSERT INTO transactions VALUES(456784, '2018-03-02', '2018-11-13', 'P09', '2144', 'Cash', 'E6', 'GHIB7253', 3 , 913.00);
INSERT INTO transactions VALUES(415478, '2018-03-05', '2018-10-30', 'P02', '1114', 'Cash', 'E2', 'GHIB7253', 3, 913.00);
INSERT INTO transactions VALUES(871871, '2018-10-11', '2018-10-25', 'P03', '2144', 'Credit', 'E4', 'GHIB7253', NULL ,978.00);
INSERT INTO transactions VALUES(924595, '2018-11-12', '2018-11-13', 'P07', '2136', 'Cash', 'E4', 'GHIB7253', 4, 948.00);
INSERT INTO transactions VALUES(118285, '2018-11-30', '2018-12-12', 'P04', '7316', 'Check', 'E1', 'GHIB7253', 1, 968.00);
INSERT INTO transactions VALUES(118652, '2018-09-30', '2018-12-31', 'P05', '1114', 'Credit', 'E2', 'GHIB7253', 2, 973.00);
INSERT INTO transactions VALUES(118653, '2018-01-02', '2018-02-01', 'P09', '2136', 'Credit', 'E3', 'GHIB7253', 3, 913.00);

COMMIT;