-- Liam Salazar
/* Business Question: How many passengers are from each state/province? Show results in desending order. */
SELECT states.StateName, 
    COUNT(Contact_Details.States) AS NumberOfPassengers
FROM Contact_Details
LEFT JOIN states
ON Contact_Details.States = states.StID
GROUP BY StateName
ORDER BY 2 DESC;

-- Liam Salazar
/* Business Question: Who are employees that at are frontend developers and backend developers in the state of Massaschusetts */
SELECT employees.employee_ID, employees.fullName, branch.Location, branch.City, branch.State_ID
FROM employees
INNER JOIN branch
ON employees.Branch = branch.branch_ID
WHERE (employees.Position = 'Backend Developer' OR employees.Position = 'Frontend Developer')    
AND branch.State_ID = 'MA'
ORDER BY 2 ASC;

-- Liam Salazar
/* What state or province from the "states" table belongs to Ireland? */
SELECT StID, StateName, countries.country
FROM states
INNER JOIN countries
ON states.Country = countries.country_id
WHERE countries.country_id = 'IRE';

--Liam Salazar
/* Business Question: Where are the passengers from? */
SELECT passenger.fName, passenger.lName, Contact_Details.City, Contact_Details.States
FROM passenger
INNER JOIN Contact_Details
ON passenger.contactID = Contact_Details.CnID;

--Jeffrey Avalos
/*Business Question: Which passengers have more than one transaction(frequent fliers)? */
SELECT p.passenger_ID, fName, lname
FROM Passenger p, transactions t
WHERE p.passenger_ID =  t.passenger_ID
GROUP BY fName
HAVING COUNT(t.passenger_ID) > 1;

--Jeffrey Avalos
/* Business Question: Which Passengers have used the Senior discount? */
SELECT DISTINCT p.passenger_ID, fname, lname 
FROM transactions t, Passenger P
WHERE t.passenger_ID = p.passenger_ID AND t.Discount_ID = 3;

-- These queries don't really correspond with what Dr. Kim was asking for. Please revise --

--Domonique Cox
/* Business Question: List all details of the airfare less than 150 in ascending order of price.*/
--SELECT * FROM AirFare
--WHERE price < 150.00 
--and type in ('2','1')
--ORDER by price ASC;

--Domonique Cox
/*Business Question: Update the arrival time of FlightSchedule '1114' to '4:55'. Display all records of FlightSchedule table after update.*/
--UPDATE FlightSchedule 
--set Arrive = '4:55'
--where FS_ID = '1114';
--SELECT * FROM FlightSchedule;
---------------------------------------------------------------------------------------------------


--Abrahan Ramirez
/*Show the discounts chosen during the transactions then use the discounts table to identify them*/
SELECT transactions.orderID, transactions.bookingDate, transactions.passenger_ID,
   transactions.charge_ID, transactions.Discount_ID
    , discounts.Title, discounts.Amount, discounts.Description
    FROM transactions
    LEFT OUTER JOIN discounts
    ON transactions.Discount_ID = discounts.DiscountId;



--Abrahan Ramirez
/*Find all the staff who work in the city Prairie View*/
select employee_ID, fullName, position
     from employees E
     where exists
     (select*
     from branch B
     where E.Branch = B.branch_ID and
     city = 'Prairie View');



--Abrahan Ramirez
/*Show the employee's full name and thier branch Id*/
select employees.fullName, branch.branch_ID
     from employees
     inner join branch
     on employees.Branch = branch.branch_ID;
     
     
     
--Abrahan Ramirez
/*Show the number of employees that work at eac branch.*/
select branch, count(employee_ID) as myCount
     from employees
     group by branch;
