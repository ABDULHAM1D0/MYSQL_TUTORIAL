-- CASE STATEMENT


SELECT first_name,
last_name,
age,
CASE 
	WHEN age <= 30 THEN 'YOUNG'
    WHEN age BETWEEN 31 AND 50 THEN 'OLD'
    WHEN age >= 50 THEN "ON DEATH'S DOOR" 
END AS AGE_BRACKET
FROM parks_and_recreation.employee_demographics;




SELECT first_name, 
last_name, 
salary,
CASE
	WHEN salary < 50000 THEN salary + (salary * 0.05)
    WHEN salary > 50000 THEN salary + (salary * 0.07)
END AS NEW_SALARY,
CASE 
	WHEN dept_id = 6 THEN salary * 0.1
END AS BONUS
FROM parks_and_recreation.employee_salary;

