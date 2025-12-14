declare
    customer_name varchar2(15);
    product_name  varchar2(15);
    i number := 1;
begin
    while i <= 10
    loop
        customer_name := '&cname';
        product_name  := '&pname';

        insert into customers(cid, cname, pname)
        values (i, customer_name, product_name);

        dbms_output.put_line('Inserted: ' || customer_name || ' - ' || product_name);

        i := i + 1;
    end loop;
end;
/
