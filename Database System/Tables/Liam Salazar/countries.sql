/*
**Liam Salazar
**Countries relation has info about countries PV Airways
**travels to or associated with
*/
CREATE TABLE countries (
    country_id VARCHAR(3) PRIMARY KEY NOT NULL,
    country VARCHAR(25) NOT NULL
);

INSERT INTO countries VALUES('USA', 'United States of America');
INSERT INTO countries Values('CAN', 'Canada');
INSERT INTO countries VALUES('IRE','Ireland');