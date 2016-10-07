use classicmodels;

SELECT 
    *
FROM
    customers T1
WHERE
    T1.customerName LIKE 'a%'
        AND T1.customerName LIKE '%e';

SELECT 
    *
FROM
    employees AS T2
WHERE
    T2.jobTitle LIKE 'Sales Manager (APAC)';

SELECT DISTINCT
    jobtitle
FROM
    employees; 

CALL getAllItems; 
show procedure status;
CALL getAllProducts; 
CALL getAllOffices;

SELECT 
    T1.*, T2.*
FROM
    employees T1
        INNER JOIN
    offices AS T2 ON T1.officeCode = T2.officeCode;

SELECT 
    T1.*, T2.*
FROM
    employees T1
        INNER JOIN
    offices AS T2 ON T1.officeCode = T2.officeCode
WHERE
    T2.officeCode >= 2
        AND T2.officeCode <= 5;

SELECT 
    *
FROM
    `[not null customers]`;

SELECT 
    *,
    ROUND(((T1.buyPrice / 100) * 10), 2) AS discount,
    (T1.buyPrice - ROUND(((T1.buyPrice / 100) * 10), 2)) AS discount_rate
FROM
    products AS T1;

SELECT 
    *
FROM
    `ten percent` AS T1
        CROSS JOIN
    `ten percent` AS T2 ON T1.discount = T2.discount;

SELECT 
    *
FROM
    `ten percent` AS T1
        NATURAL JOIN
    orders AS T2;

SELECT 
    T1.*, T2.*
FROM
    employees T1
        INNER JOIN
    offices AS T2 USING (officeCode);


CREATE TABLE `table_b` (SELECT * FROM
    classicmodels.table_b);


SELECT 
    T1.*, T2.*
FROM
    employees T1
        INNER JOIN
    offices AS T2 USING (officeCode);
