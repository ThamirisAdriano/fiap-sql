DO $$
DECLARE
    i integer := 1;
BEGIN
    WHILE i <= 1000 LOOP
        INSERT INTO Customer ("Name", "Address1", "Address2", "Address3") VALUES
        ('Customer ' || i, '1234 Main St', 'Apt ' || i, 'Cityville');
        i := i + 1;
    END LOOP;
END $$;



DO $$
DECLARE
    i integer := 1;
    customer_id integer;
    status_id integer;
BEGIN
    FOR customer_id IN 1..1000 LOOP
        FOR status_id IN 1..4 LOOP
            INSERT INTO "Order" ("CustomerID", "TotalAmount", "OrderStatusID", "OrderDate") VALUES
            (customer_id, (RANDOM() * 990 + 10)::decimal(10, 2), status_id, CURRENT_DATE - (i % 30));
            i := i + 1;
        END LOOP;
    END LOOP;
END $$;


DO $$
DECLARE
    order_id integer;
    product_id integer;
BEGIN
    FOR order_id IN 1..4000 LOOP
        FOR product_id IN 1..1000 BY 100 LOOP
            INSERT INTO OrderLine ("OrderID", "ProductID", "Quantity") VALUES
            (order_id, product_id, (RANDOM() * 9 + 1)::int);
        END LOOP;
    END LOOP;
END $$;