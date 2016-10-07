-- 1. Write a query to display the first day of the month (in datetime format) three months before the current month

SELECT DATE(((PERIOD_ADD(EXTRACT(YEAR_MONTH FROM CURDATE()), - 3) * 100) + 1));

-- 2. Write a query to display the last day of the month (in datetime format) three months before the current month

SELECT 
    SUBDATE(DATE(PERIOD_ADD(EXTRACT(YEAR_MONTH FROM CURRENT_DATE()),
                    - 2) * 100 + 1),
        1);

SELECT DAYOFMONTH(CURDATE()) day;
SELECT 
    (SUBDATE(ADDDATE(CURDATE(), INTERVAL 1 MONTH),
        INTERVAL DAYOFMONTH(CURDATE()) DAY)) AS LastDayOfTheMonth;
        
-- 3. Write a query to get the distinct Mondays from hire_date in employees tables

SELECT DISTINCT
    (STR_TO_DATE(CONCAT(YEARWEEK(hire_date), '1'),
            '%x%v%w')),
    DAYOFYEAR((STR_TO_DATE(CONCAT(YEARWEEK(hire_date), '1'),
                    '%x%v%w'))),
    QUARTER((STR_TO_DATE(CONCAT(YEARWEEK(hire_date), '1'),
                '%x%v%w')))
FROM
    employees;
    
SELECT 
    STR_TO_DATE(CONCAT(YEARWEEK(CURDATE()),'1'),'%x%v%w');

    
-- 4. Write a query to get the first day of the current year. -- ****

SELECT 
    STR_TO_DATE(CONCAT(YEAR(CURDATE()), '01')+1,
            '%x%v%w'); 

-- 5. Write a query to get the last day of the current year



-- 6. Write a query to calculate the age in year

select datediff(now(),'1992-10-28');

-- 7. Write a query to get the current date in the following format. Sample date : 2014-09-04 Output : September 4, 2014

SELECT DATE_FORMAT(NOW(), '%M %d , %x');

-- 8. Write a query to get the current date in the following format. Thursday September 2014

SELECT DATE_FORMAT(NOW(), '%W %M %x');

-- 9. Write a query to extract the year from the current date

select extract(year from now());

-- 10. Write a query to get the DATE value from a given day (number in N).Sample days : 730677 Output : 2000-07-11

select extract(day from hire_date) from employees;

-- 11. Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30 .

select hire_date from employees where hire_date 
between '1987-06-01' and '1987-07-30';

-- 12. Write a query to display the current date in the following format. Sample output : Thursday 4th September 2014 00:00:00.

select date_format(curdate(),'%W %D %M %x %h:%m:%s');

-- 13.Write a query to display the current date in the following format.
-- 14.Write a query to display the current date in the following format.

-- 15. Write a query to get the firstname, lastname who joined in the month of June.

SELECT 
    first_name, last_name, hire_date
FROM
    employees
WHERE
    MONTHNAME(hire_date) NOT LIKE 'june';

-- 16. Write a query to get the years in which more than 10 employees joined.

SELECT 
    GROUP_CONCAT(employee_id),
    hire_date,
    EXTRACT(YEAR FROM hire_date),
    COUNT(*) AS count
FROM
    employees
GROUP BY EXTRACT(YEAR FROM hire_date)
HAVING COUNT(*) >= 10;

-- 17. Write a query to get the department ID, year, and number of employees joined.

SELECT 
    department_id, EXTRACT(YEAR FROM hire_date), COUNT(*) ,group_concat(employee_id)
FROM
    employees
GROUP BY EXTRACT(YEAR FROM hire_date) , department_id;

-- 18. Write a query to get department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.


-- 19. Write a query to get employee ID, last name, and date of first salary of the employees. *******

SELECT 
    employee_id,
    last_name,
    REPLACE(MONTH(hire_date),
        MONTH(hire_date),
        MONTH(hire_date) + 1) AS mons,
    hire_date
FROM
    employees;

-- 20. Write a query to get first name, hire date and experience of the employees

SELECT 
    hire_date, concat(YEAR(CURDATE()) - YEAR(hire_date) , ' experience')
FROM
    employees;

-- 21. Write a query to get first name of employees who joined in 1987

SELECT 
    first_name, hire_date
FROM
    employees
WHERE
    EXTRACT(YEAR FROM hire_date) = 1987
        OR YEAR(hire_date) = 1987;
        
 -- ------------------------------------------------------------------------------------------------------------------------------
 -- ------------------------------------------------------------------------------------------------------------------------------
 -- ------------------------------------------------------------------------------------------------------------------------------       
 
SELECT 
    Start_Date, End_Date
FROM
    (SELECT 
        Start_Date
    FROM
        Projects
    WHERE
        Start_Date NOT IN (SELECT 
                End_Date
            FROM
                Projects)) a,
    (SELECT 
        End_Date
    FROM
        Projects
    WHERE
        End_Date NOT IN (SELECT 
                Start_Date
            FROM
                Projects)) b
WHERE
    Start_Date < End_Date
GROUP BY Start_Date
ORDER BY DATEDIFF(End_Date, Start_Date) , Start_Date;

set @mydate := '1992-10-28';
SELECT 
    SUM(@mydate),
    EXTRACT(YEAR_MONTH FROM @mydate),
    SUBSTRING(@mydate, 1, 1) a,
    SUBSTRING(@mydate, 2, 1) b,
    SUBSTRING(@mydate, 3, 1) c,
    SUBSTRING(@mydate, 4, 1) d,
    SUBSTRING(@mydate, 5, 1) e,
    SUBSTRING(@mydate, 6, 1) f,
    SUBSTR(@mydate, 7, 1) h,
    SUBSTR(@mydate, 8, 1) i,
    SUBSTR(@mydate, 9, 1) j,
    SUBSTR(@mydate, 10, 1) k,
    SUBSTRING(@mydate, 1, 1) + SUBSTRING(@mydate, 2, 1) + SUBSTRING(@mydate, 3, 1) + SUBSTRING(@mydate, 4, 1) + SUBSTRING(@mydate, 5, 1) + SUBSTRING(@mydate, 6, 1) + SUBSTR(@mydate, 7, 1) + SUBSTR(@mydate, 8, 1) + SUBSTR(@mydate, 9, 1) + SUBSTR(@mydate, 10, 1) AS total,
    EXTRACT(YEAR FROM @mydate) + EXTRACT(MONTH FROM @mydate) + EXTRACT(DAY FROM @mydate)
;


SELECT EXTRACT(WEEK FROM DATE(CURDATE())) * 7;
SELECT DAYOFYEAR(NOW());

SELECT 
    BINARY first_name
FROM
    employees;