/*
* Once everyone is done with their tables I will copy
* and paste those SQL commands here to create the database
*/

CREATE DATABASE pvairlines;

USE DATABASE pvairlines;

-- Creates Contact Details Table
create table Contact_Details(
	CnID INT PRIMARY KEY,
	Email VARCHAR(25) NOT NULL,
	Cell VARCHAR(16) NOT NULL,
	Street VARCHAR(64),
	States VARCHAR(20) NOT NULL,
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
Airfare_ID INT,
DepartFrom Varchar(32),
ArriveTo Varchar(32),
Fare INT, 
PRIMARY KEY(Airfair_ID)
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
    branch_ID INT(3) AUTO_INCREMENT PRIMARY KEY,
    Location VARCHAR(50) NOT NULL,                  -- Location means name of branch (Ex. Copperfield)
    Address VARCHAR(50) NOT NULL,
    City VARCHAR(30) NOT NULL,
    State_ID VARCHAR(2),

    CONSTRAINT fk_BranchState FOREIGN KEY (State_ID)
    REFERENCES states(StID)  
);

-- Creates table for different countries our companies travels to
CREATE TABLE countries (
    country_id VARCHAR(3) PRIMARY KEY NOT NULL,
    country VARCHAR(25) NOT NULL
);

-- Creates table for all employees in our company
CREATE TABLE employees(
    employee_ID VARCHAR(4) AUTO_INCREMENT PRIMARY KEY,
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
    MfdOn Datetime NOT NULL
);

-- Creates table for routes
CREATE TABLE Route(
    RtID INT PRIMARY KEY,
    Airport Varchar(32) NOT NULL,
    Destination Varchar(32) NOT NULL,
    RouteCode Varchar(16) NOT NULL UNIQUE,
);