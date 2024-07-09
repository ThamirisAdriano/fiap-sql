-- Inserindo dados na tabela "Customer"
INSERT INTO "Customer" ("Name", "Address1", "Address2", "Address3") VALUES
('John Doe', '123 Elm St', 'Apt 2', 'Springfield'),
('Jane Smith', '456 Oak St', 'Apt 6', 'Riverside'),
('Alice Johnson', '789 Pine St', 'Apt 11', 'Greenwood'),
('Bob Brown', '321 Maple St', 'Apt 1', 'Duckburg');


-- Inserindo dados na tabela "Product"
INSERT INTO "Product" ("Name", "Price") VALUES
('Widget A', 29.99),
('Widget B', 19.99),
('Gadget A', 99.99),
('Gadget B', 49.99);


-- Inserindo dados na tabela "Order"
INSERT INTO "Order" ("CustomerID", "TotalAmount", "OrderStatusID") VALUES
(1, 150.00, 1),
(1, 200.00, 2),
(2, 300.00, 3),
(3, 400.00, 4);


-- Inserindo dados na tabela "OrderLine"
INSERT INTO "OrderLine" ("OrderID", "ProductID", "Quantity") VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 1),
(3, 4, 1),
(4, 1, 3);
