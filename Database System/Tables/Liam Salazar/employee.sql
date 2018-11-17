/**
*Liam Salazar
*Employee Relation has data of PV Airways's employees
*/
CREATE TABLE employees(
    employee_ID VARCHAR(4) PRIMARY KEY,
    fullName VARCHAR(50) NOT NULL,
    Branch INT(3) NOT NULL,
    Position VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Phone VARCHAR(25) NOT NULL,

    CONSTRAINT fk_EmployeesBranch FOREIGN KEY (Branch)
    REFERENCES branch(branch_ID)
);

INSERT INTO employees VALUES ('E1', 'Shawn Smith', 936, 'Pilot', 'shawn.smith@pvair.com', '936-459-8159');
INSERT INTO employees VALUES ('E2', 'Domonique Cox', 936, 'CFO', 'domonique.cox@pvair.com', '936-459-9981');
INSERT INTO employees VALUES ('E3', 'Kirk Salazar', 599, 'Security Guard', 'kirk.salazar@pvair.com', '599-459-4786');
INSERT INTO employees VALUES ('E4', 'Abrahan Ramirez', 216, 'Front End Developer', 'abrahan.ramirez@pvair.com', '216-459-5683');
INSERT INTO employees VALUES ('E5', 'Michael Scott', 570, 'Regional Manager', 'michael.scott@pvair.com', '570-459-1234');
INSERT INTO employees VALUES ('E6', 'Lisa Ann', 570, 'Marketing Manager', 'lisa.ann@pvair.com', '570-459-4563');
INSERT INTO employees VALUES ('E7', 'Mary Livingston', 978, 'Backend Developer', 'mary.livingston@pvair.com', '978-459-8909');
INSERT INTO employees VALUES ('E8', 'Leonard Guy', 978, 'Backend Developer', 'leonard.guy@pvair.com', '978-459-4785');





