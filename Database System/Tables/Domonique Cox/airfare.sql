/*  
*Fare attribute didn't have a datatype
*Varchar values need to be enclosed within single quotes
*/

CREATE TABLE AirFare (
Airfare_ID INT,
DepartFrom Varchar(32),
ArriveTo Varchar(32),
Fare INT, 
PRIMARY KEY(Airfare_ID)
);


INSERT INTO AirFare VALUES (1, 'Atlanta', 'Miami', 128);
INSERT INTO AirFare VALUES (2, 'Los Angeles', 'Houston', 112);
INSERT INTO AirFare VALUES (3, 'Salt Lake City', 'Atlanta', 197);
INSERT INTO AirFare VALUES (4, 'New York City', 'Charlotte', 159);
INSERT INTO AirFare VALUES (5, 'Las Vegas', 'Denver', 154);
INSERT INTO AirFare VALUES (6, 'Houston', 'Toronto', 547);
