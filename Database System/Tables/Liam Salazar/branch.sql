/**
*Created by Liam Salazar
*Branch Table
*This relation has data about the different airline branch locations
**/
CREATE TABLE branch (
    branch_ID INT(3) AUTO_INCREMENT PRIMARY KEY,
    Location VARCHAR(50) NOT NULL,                  -- Location means name of branch (Ex. Copperfield)
    Address VARCHAR(50) NOT NULL,
    City VARCHAR(30) NOT NULL,
    State_ID VARCHAR(2),

    CONSTRAINT fk_BranchState FOREIGN KEY (State_ID)
    REFERENCES States(StID)  
);

INSERT INTO branch(936, 'Panther Regional', '100 University Dr.', 'Prairie View', 'TX');
INSERT INTO branch(913, 'Greater Kansas City', '2601 Holmes St.', 'Kansas City', 'KS');
INSERT INTO branch(599, 'River Park Center', '71 E Via la Plata', 'Fresno', 'CA');
INSERT INTO branch(216, 'Katy', '10326 Hartfield Bluff Ln.', 'Cypress', 'TX');