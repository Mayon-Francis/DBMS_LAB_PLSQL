DECLARE
    C_EMPNO EMPLOYEE.EMPNO%TYPE;
    C_NAME EMPLOYEE.NAME%TYPE;
    C_SALARY EMPLOYEE.SALARY%TYPE;
    C_DESIGNATION EMPLOYEE.DESIGNATION%TYPE;
    COUNTER NUMBER:=0;
    C_DEPTID EMPLOYEE.DEPTID%TYPE;
    CURSOR C_EMPLOYEE IS SELECT EMPNO,NAME,SALARY,DESIGNATION,DEPTID FROM EMPLOYEE ORDER BY SALARY DESC;
BEGIN
    OPEN C_EMPLOYEE;
    LOOP
    FETCH C_EMPLOYEE INTO C_EMPNO,C_NAME,C_SALARY,C_DESIGNATION,C_DEPTID;
        COUNTER:=COUNTER+1;
        EXIT WHEN C_EMPLOYEE%NOTFOUND;
        EXIT WHEN COUNTER=6;
        DBMS_OUTPUT.PUT_LINE(C_EMPNO||' '||C_NAME||' '||C_SALARY||' '||C_DESIGNATION||' '||C_DEPTID);
    END LOOP;
    CLOSE C_EMPLOYEE;
END;
/