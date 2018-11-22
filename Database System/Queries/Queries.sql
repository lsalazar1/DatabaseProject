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
ORDER By 2 DESC;

--Jeffrey Avalos
/*NOT DONE Business Question: Which passengers have more than one transaction(frequent fliers) and their charges? */
SELECT p.passenger_ID, p.fName, p.lname, t.total,
   COUNT(/*frequentflier*/) AS frequentFliers
FROM Passenger p, transactions t
/*Work in progress*/
--Jeffrey Avalos
/* Business Question: How many Passengers have used the Senior discount? */
SELECT COUNT(DISTINCT p.passenger_ID) AS SeniorPassengerCount
FROM Passenger p, Discounts d
WHERE d.DiscountID = 3;
