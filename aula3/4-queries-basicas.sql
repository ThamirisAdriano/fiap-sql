-- Inner Join:
--Encontrar todos os pedidos com seus detalhes de status
SELECT c."Name", o."TotalAmount", s."Name" as "Status"
FROM "Order" o
INNER JOIN "Customer" c ON o."CustomerID" = c."CustomerID"
INNER JOIN "OrderStatus" s ON o."OrderStatusID" = s."OrderStatusID";


--left
-- Listar todos os clientes e seus pedidos, se houver
SELECT c."Name", o."TotalAmount"
FROM "Customer" c
LEFT JOIN "Order" o ON c."CustomerID" = o."CustomerID";


--Right
-- Listar todos os produtos e qualquer linha de pedido associada
SELECT p."Name", ol."Quantity"
FROM "Product" p
RIGHT JOIN "OrderLine" ol ON p."ProductID" = ol."ProductID";


--Fulljoin
-- Combinar informações de clientes e status, mostrando todos os registros
SELECT c."Name" as "CustomerName", s."Name" as "StatusName"
FROM "Customer" c
FULL JOIN "OrderStatus" s ON c."CustomerID" = s."OrderStatusID";


--Crossjoin
-- Combinar cada cliente com cada status
SELECT c."Name" as "CustomerName", s."Name" as "StatusName"
FROM "Customer" c
CROSS JOIN "OrderStatus" s;
