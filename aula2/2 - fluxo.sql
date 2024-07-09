#John Wick se registra com seu endereço.

INSERT INTO Customer ("Name", "Address1", "Address2", "Address3")
VALUES ('John Wick', '47 Continental Dr', 'Apartamento 3', 'Nova York, NY');

select * from Customer

#Registro de um produto e status para Order

INSERT INTO OrderStatus ("Name")
VALUES
    ('Pending'),
    ('Processing'),
    ('Completed');

INSERT INTO Product ("Name", "Price")
VALUES ('Widget', 19.99);

select * from Product
select * from OrderStatus

#John Wick realiza um pedido do produto 'Widget':

INSERT INTO "Order" ("CustomerID", "TotalAmount", "OrderStatusID")
VALUES (1, 19.99, 1);

INSERT INTO OrderLine ("OrderID", "ProductID", "Quantity")
VALUES (1, 1, 1);

select * from "Order"
select * from OrderLine

#John Wick decide comprar mais um 'Widget', então atualizamos a quantidade no pedido.

UPDATE OrderLine
SET "Quantity" = 2
WHERE "OrderLineID" = 1;

UPDATE "Order"
SET "TotalAmount" = 39.98  -- 19.99 * 2
WHERE "OrderID" = 1;

select * from "Order"
select * from OrderLine


#Realizar selects para verificar os status

#John Wick Cancela o Pedido

INSERT INTO OrderStatus ("Name")
VALUES ('Cancelado');

UPDATE "Order"
SET "OrderStatusID" = 4
WHERE "OrderID" = 1;

select * from "Order"

#Remover pedidos
DELETE FROM OrderLine
WHERE "OrderLineID" = 1;

DELETE FROM "Order"
WHERE "OrderID" = 1;