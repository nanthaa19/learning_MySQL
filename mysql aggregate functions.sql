use hr;
SELECT 
    *
FROM
    hr.employees;

-- 1. Write a query to list the number of jobs available in the employees table.

SELECT DISTINCT
    job_id, jobs.job_title
FROM
    hr.employees
        NATURAL JOIN
    hr.jobs
ORDER BY hr.jobs.job_title;

-- 2. Write a query to get the total salaries payable to employees 

SELECT 
    SUM(employees.salary)
FROM
    hr.employees;

-- 3. Write a query to get the minimum salary from employees table 

SELECT 
    MIN(employees.salary)
FROM
    hr.employees;

-- 4. Write a query to get the maximum salary of an employee working as a programmer

SELECT 
    MAX(salary)
FROM
    hr.employees
WHERE
    LOWER(job_id) = 'It_prog';
    
-- 5. Write a query to get the average salary and number of employees working the department 90
   
SELECT 
    COUNT(*), AVG(salary) ,group_concat(employee_id)
FROM
    hr.employees
WHERE
    employees.department_id = 90;
    
-- 6. Write a query to get the highest, lowest, sum, and average salary of all employees

SELECT 
    MIN(T1.salary),
    MAX(T1.salary),
    SUM(T1.salary),
    AVG(T1.salary)
FROM
    hr.employees AS T1;
    
-- 7. Write a query to get the number of employees with the same job   

SELECT 
    job_id, COUNT(employee_id)
FROM
    hr.employees
GROUP BY employees.job_id;

-- 8. Write a query to get the difference between the highest and lowest salaries.

SELECT 
    MAX(salary) - MIN(salary) difference
FROM
    hr.employees;
    
-- 9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.     
    
SELECT 
    manager_id,
    GROUP_CONCAT(manager_id),
    COUNT(manager_id),
    MIN(salary),
    MAX(salary),
    SUM(salary),
   round(AVG(salary),2)
FROM
    employees
WHERE
    manager_id IS NOT NULL
GROUP BY manager_id;
    
-- 10. Write a query to get the department ID and the total salary payable in each department

SELECT 
    SUM(salary), department_id
FROM
    hr.employees
WHERE
    department_id IS NOT NULL
GROUP BY hr.employees.department_id;

-- 11. Write a query to get the average salary for each job ID excluding programmer

SELECT 
    ROUND(AVG(salary), 2), job_id
FROM
    hr.employees
WHERE
    LOWER(job_id) != 'it_prog'
GROUP BY job_id;
    
-- 12. Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only    

SELECT 
    job_id, MIN(salary), MAX(salary), SUM(salary), AVG(salary)
FROM
    employees
WHERE
    department_id = 90
GROUP BY job_id;

-- 13. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
    
SELECT 
    job_id, MAX(salary) ,employee_id
FROM
    employees
GROUP BY job_id
HAVING MAX(salary) >= 4000;

-- 14. Write a query to get the average salary for all departments employing more than 10 employees.

SELECT 
    job_id,
    AVG(salary),
    department_id,
    GROUP_CONCAT(employee_id),
    COUNT(employee_id)
FROM
    hr.employees
GROUP BY department_id
HAVING COUNT(employee_id) > 10;