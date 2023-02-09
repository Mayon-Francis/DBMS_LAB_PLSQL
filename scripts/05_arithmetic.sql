DECLARE
    A INT := 5;
    B INT := 6;
    C INT;
BEGIN
    C := A + B;
    dbms_output.put_line('Value of c is: ' || c);

    dbms_output.put_line('More operators');
    dbms_output.put_line(10+5);
    dbms_output.put_line(10-5);
    dbms_output.put_line(10*5);
    dbms_output.put_line(10/5);
    dbms_output.put_line(2**3);
END;
/