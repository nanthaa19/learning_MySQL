SELECT *
FROM customers T1
WHERE T1.customerName LIKE 'a%' AND T1.customerName LIKE '%e';

SELECT *
FROM employees AS T2
WHERE T2.jobTitle LIKE'Sales Manager (APAC)' ;

SELECT DISTINCT jobtitle
FROM employees; 

CALL getAllItems; 
CALL getAllProducts; 
CALL getAllOffices;

SELECT T1.*, T2.*
FROM employees T1
INNER JOIN offices AS T2 ON T1.officeCode = T2.officeCode;

SELECT T1.*, T2.*
FROM employees T1
INNER JOIN offices AS T2 ON T1.officeCode = T2.officeCode
WHERE T2.officeCode >= 2 AND T2.officeCode <= 5;

SELECT *
FROM `[not null customers]`

CREATE VIEW '[ten percent discount]'
SELECT *, ROUND(((T1.buyPrice / 100) * 10),2) AS discount, (T1.buyPrice - ROUND(((T1.buyPrice / 100) * 10),2)) AS discount_rate
FROM products AS T1;

select * from `ten percent` as T1  cross join `ten percent` as T2 on T1.discount = T2.discount ;

select * from `ten percent` as T1  natural join orders as T2 ;

SELECT T1.*, T2.*
FROM employees T1
INNER JOIN offices AS T2 using (officeCode)


create table `table_b` (select * from classicmodels.table_b)
select * from `top rankers`
