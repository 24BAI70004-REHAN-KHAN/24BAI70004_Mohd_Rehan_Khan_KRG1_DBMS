-- Step 1: Create the trigger function
CREATE OR REPLACE FUNCTION restrict_order_date_update()
RETURNS TRIGGER AS $$
BEGIN
    -- Check if order_date is being modified
    IF NEW.order_date IS DISTINCT FROM OLD.order_date THEN
        RAISE EXCEPTION 'Modification of order_date is not allowed';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Step 2: Create the trigger on Tbl_Orders
CREATE TRIGGER trg_restrict_order_date
BEFORE UPDATE ON Tbl_Orders
FOR EACH ROW
EXECUTE FUNCTION restrict_order_date_update();
