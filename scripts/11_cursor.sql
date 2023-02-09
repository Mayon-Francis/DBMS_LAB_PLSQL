DECLARE
    id SAMPLE.ID%TYPE;
    CURSOR Sample_Id IS
        SELECT ID FROM SAMPLE;
BEGIN
    OPEN Sample_Id;
    LOOP
    FETCH Sample_Id INTO id;
        EXIT WHEN Sample_Id%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('ID: ' || id);
    END LOOP;
    CLOSE Sample_Id;
END;
/