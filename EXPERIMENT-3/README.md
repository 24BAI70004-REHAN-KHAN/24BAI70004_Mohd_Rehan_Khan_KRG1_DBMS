# 🧪 Experiment 3 – PL/SQL Block Structure

## 📌 Aim
To understand the basic structure of a PL/SQL program by creating and executing a simple PL/SQL block that includes declaration and execution sections, performs calculations, and uses conditional statements to make decisions.

---

## 🎯 Objectives
- To create a simple PL/SQL program demonstrating Declaration Section and Execution Section.
- To understand the use of conditional statements (IF–ELSE) in PL/SQL for decision-making operations.
- To perform salary-based calculations inside a PL/SQL block.

---

## ⚙ Software Requirement
- Oracle FreeSQL

---

## 🧩 Practical / Experiment Steps
- A PL/SQL block is created using the DECLARE keyword.
- Variables for employee details such as ID, name, and basic salary are declared.
- House Rent Allowance (HRA) is calculated as 40% of the basic salary.
- An IF–ELSE condition is used to determine tax applicability.
- All outputs are displayed using DBMS_OUTPUT.PUT_LINE.

---

## 🛠 Procedure
1. Start the Oracle FreeSQL environment.
2. Declare required variables in the DECLARE section.
3. Assign values to the declared variables.
4. Write execution logic inside the BEGIN block.
5. Calculate HRA using an arithmetic expression.
6. Display employee details and HRA.
7. Apply IF–ELSE condition to check tax applicability.
8. Display the tax status.
9. End the PL/SQL block using END; and execute the program.
10. Verify the output.

---

## 💻 Code
```sql
DECLARE
    EMP_ID NUMBER := 789;
    EMP_NAME VARCHAR2(25) := 'RAHUL';
    BASIC_SALARY NUMBER := 48000;
    HRA_AMOUNT NUMBER;

BEGIN
    HRA_AMOUNT := BASIC_SALARY * 0.40;

    DBMS_OUTPUT.PUT_LINE('EMPLOYEE ID: ' || EMP_ID);
    DBMS_OUTPUT.PUT_LINE('EMPLOYEE NAME: ' || EMP_NAME);
    DBMS_OUTPUT.PUT_LINE('BASIC SALARY: RS. ' || BASIC_SALARY);
    DBMS_OUTPUT.PUT_LINE('HOUSE RENT ALLOWANCE: RS. ' || HRA_AMOUNT);

    IF BASIC_SALARY > 60000 THEN
        DBMS_OUTPUT.PUT_LINE('TAX APPLICABLE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('TAX NOT APPLICABLE');
    END IF;

END;
/
