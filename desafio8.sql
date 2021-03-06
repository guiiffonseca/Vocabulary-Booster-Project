SELECT 
C.ContactName AS `Nome de contato`,
Sh.ShipperName AS `Empresa que fez o envio`, 
O.OrderDate AS `Data do pedido`
FROM w3schools.customers AS C
JOIN w3schools.orders AS O ON C.CustomerID = O.CustomerID 
JOIN w3schools.shippers AS Sh ON Sh.ShipperID = O.ShipperID
WHERE Sh.ShipperName  IN ('Speedy Express', 'United Package' )
ORDER BY `Nome de contato`, `Empresa que fez o envio`, `Data do pedido`;
