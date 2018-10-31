CREATE TABLE State( StID INT,
             StateName Varchar(32),
             Country Varchar(32),
             PRIMARY KEY(StID),
                   
                   
             CONTRAINT fk_Country FOREIGN KEY (Country)
             REFERENCES Countries (CtId)
                  );


INSERT INTO State VALUES (8, 'Texas','USA');
INSERT INTO State VALUES (5,'Kansas','USA');
INSERT INTO State VALUES (3, 'California','USA');
INSERT INTO State VALUES (1, 'Atlanta', 'USA');
INSERT INTO State VALUES (7, 'Utah', USA');
