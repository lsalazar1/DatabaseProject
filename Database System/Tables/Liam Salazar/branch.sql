/**
*Created by Liam Salazar
*Branch Table
*This relation has data about the different airline branch locations
**/
CREATE TABLE branch (
    branch_ID INT(3) AUTO_INCREMENT PRIMARY KEY,
    Location VARCHAR(50) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    City VARCHAR(30) NOT NULL,
    State_ID VARCHAR(2),

    CONSTRAINT fk_BranchState FOREIGN KEY (State_ID)
    REFERENCES States(State_ID)  
);