-- 1. Write a query to get the job_id and related employee's id

SELECT 
    job_id , group_concat(employee_id,' ') as employees , count(*) as count
FROM
    employees
GROUP BY job_id;

-- 2. Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '124' will be replaced by '999'

-- UPDATE employees 
-- SET 
--     phone_number = REPLACE(phone_number, '124' , '999')
-- WHERE
--     phone_number LIKE '%124%'; 

-- 3. Write a query to get the details of the employees where the length of the first name greater than or equal to 8

SELECT 
    *
FROM
    employees
WHERE
    LENGTH(first_name) >= 8;

-- 4. Write a query to display leading zeros before maximum and minimum salary

SELECT 
    job_id,
    LPAD(max_salary, 7, '.') ' Max Salary',
    LPAD(min_salary, 7, '0') ' Min Salary'
FROM
    jobs;

-- 5. Write a query to append '@example.com' to email field

SELECT 
    r1.email, CONCAT(r1.email, '@example.com')
FROM
    hr.employees AS r1;

-- 6. Write a query to get the employee id, first name and hire month

SELECT 
    employee_id, first_name, MONTH(hire_date)
FROM
    employees;

-- 7. Write a query to get the employee id, email id (discard the last three characters)

SELECT 
    employee_id, email, reverse(substr(reverse(email),4))
FROM
    employees;

-- 8. Write a query to find all employees where first names are in upper case

SELECT 
    first_name
FROM
    employees
WHERE
    first_name = BINARY UPPER(first_name);

-- 9. Write a query to extract the last 4 character of phone numbers

SELECT 
    phone_number, RIGHT(phone_number, 4)
FROM
    employees;
    
-- 10. Write a query to get the last word of the street address

SELECT 
    street_address, location_id,
    SUBSTRING_INDEX(REPLACE(REPLACE(REPLACE(street_address, ',', ' '),')',' '),'(',' '),' ',- 1) AS 'Last--word-of-street_address',
    substring_index(locations.city,'a',1), city
    
FROM
    locations;

-- 11. Write a query to get the locations that have minimum street length

SELECT 
    * , length(street_address)
FROM
    locations
WHERE
    LENGTH(street_address) <= (SELECT 
            MIN(LENGTH(street_address))
        FROM
            locations);

-- 12. Write a query to display the first word in job title

SELECT 
    job_title,
    SUBSTR(job_title,1,INSTR(job_title, '') - 1) as 'first word'
FROM
    jobs;

-- 13. Write a query to display the length of first name for employees where last name contain character 'c' after 2nd position

SELECT 
    first_name, last_name
FROM
    employees
WHERE
    INSTR(last_name, 'C') > 2;

-- 14. Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each column an appropriate label. Sort the results by the employees' first names

SELECT 
    first_name 'Name', LENGTH(first_name) 'Length'
FROM
    employees
WHERE
    first_name LIKE 'J%'
        OR first_name LIKE 'M%'
        OR first_name LIKE 'A%'
ORDER BY first_name;

-- 15. Write a query to display the first name and salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY

SELECT 
    first_name, LPAD(salary, 10, '$') SALARY
FROM
    employees;

-- 16. Write a query to display the first eight characters of the employees' first names and indicates the amounts of their salaries with '$' sign. Each '$' sign signifies a thousand dollars. Sort the data in descending order of salary.

SELECT 
    LEFT(first_name, 8),
    REPEAT('$', FLOOR(salary / 1000)) 'SALARY($)',
    salary
FROM
    employees
ORDER BY salary DESC;

-- 17. Write a query to display the employees with their code, first name, last name and hire date who hired either on seventh day of any month or seventh month in any year

SELECT 
    employee_id, first_name, last_name, hire_date
FROM
    employees
WHERE
    POSITION('07' IN DATE_FORMAT(hire_date, '%d %m %Y')) > 0;
