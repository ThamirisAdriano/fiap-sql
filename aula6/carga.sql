INSERT INTO Customer (Name, Address1, Address2, Address3)
VALUES
('John Doe', '123 Elm St', 'Apt 2', 'Springfield'),
('Jane Smith', '456 Oak St', 'Apt 6', 'Shelbyville'),
('Alice Johnson', '789 Pine St', 'Suite 1', 'Capital City');


INSERT INTO OrderStatus (Name)
VALUES
('Pending'),
('Shipped'),
('Delivered'),
('Cancelled');

-- Inserindo dados na tabela "Product"
INSERT INTO Product ("Name", "Price") VALUES
('Widget A', 29.99),
('Widget B', 19.99),
('Gadget A', 99.99),
('Gadget B', 49.99);


INSERT INTO Orders (CustomerID, TotalAmount, OrderStatusID, OrderDate)
VALUES
(1, 2400.00, 1, CURDATE()),
(2, 800.00, 2, CURDATE() - INTERVAL 1 DAY),
(3, 450.00, 3, CURDATE() - INTERVAL 2 DAY);


INSERT INTO OrderLine (OrderID, ProductID, Quantity)
VALUES
(1, 1, 2),  -- John Doe ordered 2 Laptops
(2, 2, 1),  -- Jane Smith ordered 1 Smartphone
(3, 3, 1);  -- Alice Johnson ordered 1 Tablet
