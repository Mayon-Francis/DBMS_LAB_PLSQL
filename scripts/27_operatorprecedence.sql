DECLARE
    A NUMBER(2):=20;
    B NUMBER(2):=10;
    C NUMBER(2):=15;
    D NUMBER(2):=5;
    E NUMBER(2);
BEGIN
    E:=(A+B)*C/D;
    DBMS_OUTPUT.PUT_LINE('LINE-1 VALUE IS '||E);
    E:=((A+B)*C)/D;
    DBMS_OUTPUT.PUT_LINE('LINE-2 VALUE IS '||E);
    E:=(A+B)*(C/D);
    DBMS_OUTPUT.PUT_LINE('LINE-3 VALUE IS '||E);
    E:=A+(B*C)/D;
    DBMS_OUTPUT.PUT_LINE('LINE-4 VALUE IS '||E);
END;
/