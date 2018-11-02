/*  
This table shows the ticket prices for departing and returning flights.

*/

CREATE TABLE AirFare (
Airfair_ID INT,
DepartFrom Varchar(32),
ArriveTo Varchar(32),
Fare, 
PRIMARY KEY(Airfair_ID)
);

//Change AirFare values, these numbers are place holders. 
INSERT INTO AirFare VALUES (1, Atlanta, Miami, 128);
INSERT INTO AirFare VALUES (2, Los Angeles, Houston, 299);
INSERT INTO AirFare VALUES (3, Utah, Atlanta, 172);
INSERT INTO AirFare VALUES (4, New York, North Carolina, 103);
INSERT INTO AirFare VALUES (5, Las Vegas, Colorado, 220);
