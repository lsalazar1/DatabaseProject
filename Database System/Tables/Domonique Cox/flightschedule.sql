/* 
Flight schedule is somewhat like a route table. This table will tell the times of arriving and departing flights,
departing and final destinations. 
*/

CREATE TABLE FlightSchedule (
FS_ID INT(4) PRIMARY KEY,
Depart Varchar(3) NOT NULL,
Arrive Varchar (3) NOT NULL,
DepartTime Varchar(10) NOT NULL,
ArriveTime Varchar(10) NOT NULL
);

INSERT INTO FlightSchedule VALUES (2144, 'ATL','MIA','10:30 AM','2:30 PM');
INSERT INTO FlightSchedule VALUES (1441, 'LAX','IAH','7:00 AM', '11:00 AM');
INSERT INTO FlightSchedule VALUES (7316, 'SLC','ATL', '5:00 PM', '9:00 PM');
INSERT INTO FlightSchedule VALUES (1114, 'JFK','CLT', '10:20 AM', '3:55 PM');
INSERT INTO FlightSchedule VALUES (2136, 'LAS','COS','6:00 AM', '8:50 AM');
