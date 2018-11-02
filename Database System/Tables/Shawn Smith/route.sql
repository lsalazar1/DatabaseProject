CREATE TABLE Route(
RtID INT,
Airport Varchar(32) NOT NULL,
Destination Varchar(32) NOT NULL,
RouteCode Varchar(16) NOT NULL UNIQUE,
PRIMARY KEY (RtID));

INSERT INTO Route VALUES (10,"Dallas-Ft Worth", "Los Angeles", "KDFW-KLAX");
INSERT INTO Route VALUES (11, "Portland","San Fransico","KPDX-KSFO");
INSERT INTO Route VALUES (12, "Las Vegas","Denver","KLAS-KDEN");
INSERT INTO Route VALUES (13, "Atlanta","New York","KATL-KJFK");
