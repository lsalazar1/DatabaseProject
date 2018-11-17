/**
*Created by Abrahan Ramirez
*Contact Details Table
*This relation has data about the contact deatails of passengers.
**/


create table ContactDetails(
	ConID varchar (10) PRIMARY KEY,
	Email VARCHAR(25) NOT NULL,
	Cell VARCHAR(16) NOT NULL,
	Street VARCHAR(64),
	states INT  REFERENCES states(StID)
	);


insert into ContactDetails Values(1, 'jimmyjohn@gmail.com', '949-232-4295', 'Bumpy RD',8);
insert into ContactDetails Values(2, 'sallymay@gmail.com', '434-234-6746', 'London St.', 5);
insert into ContactDetails Values(3, 'SeanPratt@yahoo.com', '765-345-2526', 'Champions Rd',3);
insert into ContactDetails Values(4, 'Mary3822@gmail.com', '855-354-5474', 'Jurica Rd',1);
insert into ContactDetails Values(5, 'Danny0493@gmail.com', '1-800-323-9111', 'PV Lane',7);
