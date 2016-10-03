-- 1. Write a query to display the names (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000

SELECT 
    first_name, last_name, salary
FROM
    employees
WHERE
    salary not BETWEEN 10000 AND 15000; 
    
SELECT 
    first_name, last_name, salary
FROM
    employees
WHERE
    salary < 10000 or salary > 15000;

-- 2. Write a query to display the names (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending alphabetical order by department ID

SELECT 
    first_name, last_name, department_id
FROM
    employees
WHERE
    department_id = 30 or department_id = 100
ORDER BY first_name ASC , department_id ASC;
        
SELECT 
    first_name, last_name, department_id
FROM
    employees
WHERE
    department_id IN (30 , 100)
ORDER BY first_name ASC , department_id ASC;
            
-- 3. Write a query to display the names (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.

SELECT 
    first_name, last_name, salary, department_id
FROM
    employees
WHERE
    (salary < 10000 OR salary > 15000)
        AND department_id IN (30 , 100); 
    
-- 4. Write a query to display the names (first_name, last_name) and hire date for all employees who were hired in 1987.

SELECT 
    *
FROM
    employees
WHERE
    YEAR(hire_date) in ('1987');
    
SELECT 
    first_name, last_name, hire_date
FROM
    employees
WHERE
    YEAR(hire_date) LIKE '1987';
    
-- 5. Write a query to display the first_name of all employees who have both "b" and "c" in their first name

SELECT 
    first_name
FROM
    employees
WHERE
    first_name like '%b%' and first_name like '%c%';

-- 6. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000

SELECT 
    last_name, job_id, salary
FROM
    employees
WHERE
    job_id IN ('it_prog' , 'SH_clerk')
        AND salary NOT IN (4500 , 10000, 15000);
    
-- 7. Write a query to display the last names of employees whose names have exactly 6 characters

SELECT 
    last_name , length(last_name)
FROM
    employees
WHERE
    LENGTH(last_name) = 6;
    
SELECT 
    last_name, LENGTH(last_name)
FROM
    employees
WHERE
    last_name like '______';

-- 8. Write a query to display the last names of employees having 'e' as the third character. 

SELECT 
    last_name
FROM
    employees
WHERE
    last_name LIKE '__e%';

-- 9. Write a query to display the jobs/designations available in the employees table

SELECT 
    distinct job_id
FROM
    employees;

-- 10. Write a query to display the names (first_name, last_name), salary and PF (15% of salary) of all employees.

SELECT 
    first_name, last_name, salary, salary * .15 AS PF
FROM
    employees;

-- 11. Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'

SELECT 
    *
FROM
    employees
WHERE
    last_name IN ('JONES' , 'BLAKE', 'SCOTT', 'KING', 'FORD'); 
    
    