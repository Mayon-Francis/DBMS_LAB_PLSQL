DECLARE
    A NUMBER(2):=10;
BEGIN
    WHILE A<20 LOOP
        DBMS_OUTPUT.PUT_LINE('VALUE OF A : ' || A);
        A:=A+1;
        IF(A>15) THEN
            EXIT;
        END IF;
    END LOOP;
END;
/