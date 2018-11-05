CREATE TABLE airCrafts(
	AcID INT Primary Key,
    AcNumber Varchar(32) NOT NULL,
    Capacity INT NOT NULL,
    MfdBy Varchar(128) NOT NULL,
    MfdOn Date NOT NULL);
    

INSERT INTO airCrafts VALUES (100, "N379AA", 245, "Boeing", "2004-03-23");
INSERT INTO airCrafts VALUES (101, "N820AL", 372, "Airbus", "2011-06-02");
INSERT INTO airCrafts VALUES (102, "N792AN", 382, "Cessna", "2010-04-13");
INSERT INTO airCrafts VALUES (103, "N722AN", 298, "Embraer", "2008-10-19");
