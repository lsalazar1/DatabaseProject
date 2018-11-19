/*Select all the flights going to MIAMI.
List the prices of the flights leaving before 1pm.
List all Passengers with more than one transaction.
List all Passengers that have used a specific discount.*/

-- Liam Salazar
/* Business Question: How many passengers are from each state/province? Show results in desending order. */
SELECT states.StateName, 
    COUNT(Contact_Details.States) AS NumberOfPassengers
FROM Contact_Details
LEFT JOIN states
ON Contact_Details.States = states.StID
GROUP BY StateName
ORDER By 2 DESC;

