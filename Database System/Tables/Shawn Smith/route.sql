CREATE TABLE Route(
RtID INT,
Airport Varchar(32) NOT NULL,
Destination Varchar(32) NOT NULL,
RouteCode Varchar(16) NOT NULL UNIQUE,
PRIMARY KEY (RtID));
