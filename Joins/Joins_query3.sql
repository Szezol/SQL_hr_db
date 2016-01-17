SELECT concat(FIRST_NAME, ', ',LAST_NAME) as EMPLOYEE_NAME, JOB_TITLE, departments.DEPARTMENT_ID, DEPARTMENT_NAME
FROM ((employees
LEFT OUTER JOIN departments
ON departments.DEPARTMENT_ID=employees.DEPARTMENT_ID)
	LEFT OUTER JOIN jobs
    ON jobs.JOB_ID=employees.JOB_ID)
		LEFT OUTER JOIN locations
        ON locations.LOCATION_ID=departments.LOCATION_ID
WHERE CITY='London';