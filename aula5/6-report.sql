--DROP VIEW IF EXISTS OrderDetails2024;

CREATE VIEW OrderDetails2024 AS
SELECT
    c."CustomerID",
    c."Name" AS CustomerName,
    c."Address1",
    c."Address2",
    c."Address3",
    o."OrderID",
    o."TotalAmount",
    o."OrderDate",
    os."Name" AS OrderStatus,
    ol."OrderLineID",
    p."ProductID",
    p."Name" AS ProductName,
    p."Price",
    ol."Quantity"
FROM
    Customer c
JOIN
    "Order" o ON c."CustomerID" = o."CustomerID"
JOIN
    OrderLine ol ON o."OrderID" = ol."OrderID"
JOIN
    Product p ON ol."ProductID" = p."ProductID"
JOIN
    OrderStatus os ON o."OrderStatusID" = os."OrderStatusID"
WHERE
    o."OrderDate" BETWEEN '2024-01-01' AND '2024-12-31';
