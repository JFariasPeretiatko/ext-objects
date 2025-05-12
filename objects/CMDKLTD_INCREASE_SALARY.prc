CREATE OR REPLACE PROCEDURE CMDKLTD_INCREASE_SALARY(
    p_employee_id IN NUMBER,
    p_percentage IN NUMBER
)
IS
BEGIN
    UPDATE cmdkltd_employees
    SET salary = salary + (salary * p_percentage / 100)
    WHERE employee_id = p_employee_id;

    COMMIT;
END;
/