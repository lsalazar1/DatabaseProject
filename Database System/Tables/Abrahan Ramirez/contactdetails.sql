/**
*Created by Abrahan Ramirez
*Contact Details Table
*This relation has data about the contact deatails of passengers.
**/


create table Contact_Details(
	CnID INT PRIMARY KEY,
	Email VARCHAR(16) NOT NULL,
	Cell VARCHAR(16) NOT NULL,
	Street VARCHAR(64),
	State VARCHAR(20) NOT NULL,
	CONSTRAINT fk_State FOREIGN KEY(State) REFERENCES State(StID)
);


insert into Contact_Details Values(1, 'jimmyjohn@gmail.com', '949-232-4295', 'Bumpy RD',
