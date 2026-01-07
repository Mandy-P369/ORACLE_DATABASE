declare     
    customer_name varchar(20);
    product_name  varchar(20);
    i number ; 
begin 
    i := 1;
    while i<=10
    loop
        customer_name := '&cname';
        product_name  := '&pname';

        insert into customers(cid, cname, pname) values (i, customer_name, product_name);
	i := i + 1;
    end loop;
end;
/
