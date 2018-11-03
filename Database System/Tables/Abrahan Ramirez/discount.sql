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


insert into Discounts values(1,'10', 'Discount is provided for children under 10 years old.');
insert into Discounts values(2,'5', 'Discount is provided for customers with disabilites.');
insert into Discounts values(3,'65', 'Discount is provided for adutls over the age of 65.');
insert into Discounts values(4,'30', 'Discount is provided for upgrading to first class.');

