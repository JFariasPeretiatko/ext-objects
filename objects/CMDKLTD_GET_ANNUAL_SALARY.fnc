CREATE OR REPLACE FUNCTION CMDKLTD_GET_ANNUAL_SALARY(p_employee_id IN NUMBER)
RETURN NUMBER
IS
    v_salary cmdkltd_employees.salary%TYPE;
BEGIN
    SELECT salary INTO v_salary FROM cmdkltd_employees WHERE employee_id = p_employee_id;
    RETURN v_salary * 12;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END CMDKLTD_GET_ANNUAL_SALARY;
/