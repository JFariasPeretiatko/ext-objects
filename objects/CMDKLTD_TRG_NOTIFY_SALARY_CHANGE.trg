CREATE OR REPLACE TRIGGER CMDKLTD_TRG_NOTIFY_SALARY_CHANGE
BEFORE UPDATE OF salary ON cmdkltd_employees
FOR EACH ROW
WHEN (OLD.salary != NEW.salary)
BEGIN
    DBMS_OUTPUT.PUT_LINE('Salary changed for employee ID: ' || :OLD.employee_id ||
                         ' from ' || :OLD.salary || ' to ' || :NEW.salary);
END;
/
