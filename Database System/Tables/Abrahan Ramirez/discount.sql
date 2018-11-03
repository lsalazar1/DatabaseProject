/**
*Created by Abrahan Ramirez
*Discounts Table
*This relation has data about discounts that passengers can get.
**/

create table Discounts(
	DiscountId Int PRIMARY KEY,
	Title Varchar(50) NOT NULL,
	Amount INT NOT NULL,
	Description Varchar(255)
);


insert into Discounts values(1,'Childrens','10', 'Discount is provided for children under 10 years old.');
insert into Discounts values(2,'Disabilites Discount', '5', 'Discount is provided for customers with disabilites.');
insert into Discounts values(3, 'Senior Discount','65', 'Discount is provided for adutls over the age of 65.');
insert into Discounts values(4,'Deep Pockets Discount', '30','Discount is provided for upgrading to first class.');

