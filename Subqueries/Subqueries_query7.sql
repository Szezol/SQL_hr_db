SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
FROM employees
LEFT OUTER JOIN departments
ON departments.DEPARTMENT_ID=employees.DEPARTMENT_ID;