DECLARE
    AGE INT := 100;

BEGIN
    IF(AGE < 10) THEN
        DBMS_OUTPUT.PUT_LINE('Age is less than 10');
    ELSIF(AGE < 20) THEN
        DBMS_OUTPUT.PUT_LINE('Age is less than 20');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Age is greater than 20');
    END IF;
    DBMS_OUTPUT.PUT_LINE('Actual age: ' || AGE);
END;
/