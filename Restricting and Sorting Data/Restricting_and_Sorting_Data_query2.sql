SELECT concat(FIRST_NAME,' ',LAST_NAME) as EMPLOYEE_NAME, HIRE_DATE
FROM employees
WHERE year(HIRE_DATE)=1987;