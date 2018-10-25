CREATE TABLE airCrafts(
	AcID INT Primary Key,
    AcNumber Varchar(32) NOT NULL,
    Capacity INT NOT NULL,
    MfdBy Varchar(128) NOT NULL,
    MfdOn Datetime NOT NULL);