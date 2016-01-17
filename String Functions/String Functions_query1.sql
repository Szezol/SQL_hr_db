SELECT EMPLOYEE_ID,left(EMAIL,char_length(EMAIL)-3)
FROM employees;