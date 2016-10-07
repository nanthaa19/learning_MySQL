GRANT ALL ON contacts TO 'root'@'localhost'; 
SHOW GRANTS FOR 'root'@'localhost';

SELECT sa.orderNumber, sa.orderDate, sa.shippedDate, sa.`status`
FROM orders sa
INNER JOIN orderdetails sq ON sa.orderNumber = sq.orderNumber
WHERE sq.priceEach < 100
ORDER BY sa.orderNumber INTO OUTFILE 'c:/results.txt' FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"'
     LINES TERMINATED BY '\n';
     
     
SELECT * FROM customers WHERE MOD(customers.customerNumber , 2) = 0;

SELECT customers.customerName,LENGTH(customers.customerName) AS len FROM customers ORDER BY customers.customerName AND customers.customerName ;

USE world;

SELECT DISTINCT
   *, city.Name AS a
FROM
    city
WHERE
    (name NOT LIKE 'a%'
        AND name NOT LIKE 'e%'
        AND name NOT LIKE 'i%'
        AND name NOT LIKE 'o%'
        AND name NOT LIKE 'u%')
        AND 
        (name NOT LIKE '%a'
        AND name NOT LIKE '%e'
        AND name NOT LIKE '%i'
        AND name NOT LIKE '%o'
        AND name NOT LIKE '%u') and district like 'tamil nadu'