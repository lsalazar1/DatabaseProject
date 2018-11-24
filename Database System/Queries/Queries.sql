/*Select all the flights going to MIAMI.
List the prices of the flights leaving before 1pm.
*/

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

--Jeffrey Avalos
/*NOT DONE Business Question: Which passengers have more than one transaction(frequent fliers) and their totals? */
SELECT p.passenger_ID, p.fName, p.lname, t.total,
   COUNT(/*frequentflier*/) AS frequentFliers
FROM Passenger p, transactions t
/*Work in progress*/
--Jeffrey Avalos
/* Business Question: How many Passengers have used the Senior discount? */
SELECT COUNT(DISTINCT p.passenger_ID) AS SeniorPassengerCount
FROM Passenger p, Discounts d
WHERE d.DiscountID = 3;


--Domonique Cox
/* Business Question: List all details of the airfare less than 150 in ascending order of price. */
SELECT * FROM AirFare
WHERE price < 150.00 
and type in ('2','1')
ORDER by price ASC;

--Domonique Cox
/*Business Question: Update the arrival time of FlightSchedule '1114' to '4:55'. Display all records of FlightSchedule table after update.*/
UPDATE FlightSchedule 
set Arrive = '4:55'
where FS_ID = '1114';
SELECT * FROM FlightSchedule;



--Abrahan Ramirez
/*Show the number of disconts offered and show the discounts most used by passengers*/


