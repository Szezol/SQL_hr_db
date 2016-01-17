SELECT LAST_NAME,JOB_TITLE,SALARY
FROM employees
INNER JOIN jobs
ON employees.JOB_ID = jobs.JOB_ID
WHERE (JOB_TITLE='Programmer' or JOB_TITLE='Shipping Clerk') and SALARY not in (4500,10000,15000);