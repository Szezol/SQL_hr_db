SELECT COUNT(*)
FROM job_history
RIGHT OUTER JOIN employees
ON job_history.EMPLOYEE_ID = employees.EMPLOYEE_ID
WHERE END_DATE is null;