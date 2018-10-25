/**
*Liam Salazar
*Employee Relation has data of PV Airways's employees
*/
CREATE TABLE employees(
    employee_ID VARCHAR(4) AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Branch VARCHAR(50) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Phone VARCHAR(25) NOT NULL,

    CONSTRAINT fk_EmployeesBranch FOREIGN KEY (Branch)
    REFERENCES branch(branch_ID)
);
