/**
*Created by Abrahan Ramirez
*Discounts Table
*This relation has data about discounts that passengers can get.
**/

create table Discounts(
	DiscountId Int PRIMARY KEY,
	Title Varchar(32) NOT NULL,
	Amount INT NOT NULL,
	Description Varchar(255)
);
