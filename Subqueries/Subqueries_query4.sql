SELECT CONCAT(FIRST_NAME,', ',LAST_NAME) as EMPLOYEE_NAME,SALARY
FROM employees
WHERE SALARY>(SELECT AVG(SALARY)
	FROM employees);