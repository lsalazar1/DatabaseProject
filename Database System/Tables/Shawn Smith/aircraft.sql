CREATE TABLE airCrafts(
	AcID INT Primary Key,
    AcNumber Varchar(32) NOT NULL,
    Capacity INT NOT NULL,
    MfdBy Varchar(128) NOT NULL,
    MfdOn Datetime NOT NULL);
    
    
INSERT INTO airCrafts VALUES (100, "N379AA", 245, "Boeing", "March 23, 2004");
INSERT INTO airCrafts VALUES (101, "N820AL", 372, "Airbus", "June 2, 2011");
INSERT INTO airCrafts VALUES (102, "N792AN", 382, "Cessna", "April 13, 2010");
INSERT INTO airCrafts VALUES (103, "N722AN", 298, "Embraer", "October 19, 2008");
