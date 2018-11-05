/*
*StID data type switched to VARCHAR
*Table name also changed b/c "state" is a reserved word
*/ 

CREATE TABLE states( StID VARCHAR(3),
    StateName Varchar(32),
    Country Varchar(32),
    PRIMARY KEY(StID),
                   
                   
    CONSTRAINT fk_Country FOREIGN KEY (Country)
    REFERENCES countries (country_id)
);

INSERT INTO states VALUES ('TX', 'Texas','USA');
INSERT INTO states VALUES ('KS','Kansas','USA');
INSERT INTO states VALUES ('CA', 'California','USA');
INSERT INTO states VALUES ('GA', 'Atlanta', 'USA');
INSERT INTO states VALUES ('UT', 'Utah', 'USA');
INSERT INTO states VALUES ('ON', 'Ontario', 'CAN')
INSERT INTO states VALUES ('LEN', 'Leinster', 'IRE';)
