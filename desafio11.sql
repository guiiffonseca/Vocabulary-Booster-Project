SELECT 
T1.ContactName AS `Nome`,
T1.Country AS ` País`,
COUNT(T1.ContactName) - 1 AS `Número de compatriotas`
FROM w3schools.customers AS T1
JOIN w3schools.customers AS T2 ON T1.Country = T2.Country
GROUP BY T1.ContactName, T1.Country
ORDER BY `Nome`;
