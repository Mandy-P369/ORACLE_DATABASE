CREATE OR REPLACE PROCEDURE p7 (
    p_amount IN orders_amount.total_amount%TYPE
)
AS
BEGIN
    FOR rec IN (
        SELECT name, total_amount
        FROM orders_amount
        WHERE total_amount > p_amount
    )
    LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Name : ' || rec.name || ' | Amount : ' || rec.total_amount
        );
    END LOOP;
END;
/
