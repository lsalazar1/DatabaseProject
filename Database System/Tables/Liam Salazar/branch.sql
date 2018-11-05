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
    REFERENCES states(StID)  
);

INSERT INTO branch VALUES(936, 'Panther Regional Headquarters', '100 University Dr.', 'Prairie View', 'TX');
INSERT INTO branch VALUES(913, 'Greater Kansas City Branch', '2601 Holmes St.', 'Kansas City', 'KS');
INSERT INTO branch VALUES(599, 'River Park Branch', '71 E Via la Plata', 'Fresno', 'CA');
INSERT INTO branch VALUES(216, 'Katy Branch', '10326 Hartfield Bluff Ln.', 'Cypress', 'TX');
INSERT INTO branch VALUES (570, 'Dunder Mifflen Regional Branch', '1725 Slough Avenue', 'Scranton', 'PA');
INSERT INTO branch VALUES(978, 'Littleton Commons Branch', '550 King St.', 'Littleton', 'MA');
