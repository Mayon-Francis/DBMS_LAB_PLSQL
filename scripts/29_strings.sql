DECLARE
    GREETING VARCHAR2(30):='HELLO WORLD';
BEGIN
    DBMS_OUTPUT.PUT_LINE(UPPER(GREETING));
    DBMS_OUTPUT.PUT_LINE(LOWER(GREETING));
    DBMS_OUTPUT.PUT_LINE(INITCAP(GREETING));
    DBMS_OUTPUT.PUT_LINE(SUBSTR(GREETING,1,1));
    DBMS_OUTPUT.PUT_LINE(SUBSTR(GREETING,-1,1));
    DBMS_OUTPUT.PUT_LINE(SUBSTR(GREETING,7,5));
    DBMS_OUTPUT.PUT_LINE(SUBSTR(GREETING,2));
    DBMS_OUTPUT.PUT_LINE(INSTR(GREETING,'E'));
    GREETING:='......HELLO WORLD.......';
    DBMS_OUTPUT.PUT_LINE(RTRIM(GREETING,'.'));
    DBMS_OUTPUT.PUT_LINE(LTRIM(GREETING,'.'));
    DBMS_OUTPUT.PUT_LINE(TRIM('.' FROM GREETING));
END;
/