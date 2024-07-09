DO $$
DECLARE
    i integer := 1;
BEGIN
    WHILE i <= 10000 LOOP
        INSERT INTO Product ("Name", "Price") VALUES
        ('Product ' || i, (RANDOM() * (100 - 5) + 5)::decimal(10,2));
        i := i + 1;
    END LOOP;
END $$;