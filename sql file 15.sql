SELECT 
    ISTRIANGLE(a, b, c), @rownum:=@rownum + 1
FROM
    triangles,
    (SELECT @rownum:=0) AS z;

SELECT 
    CASE
        WHEN  A + B > C AND B + C > A AND A + C > B THEN
            CASE
                WHEN A = B AND B = C THEN 'Equilateral'
                WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                ELSE 'Scalene'
            END
        ELSE 'Not A Triangle'
    END
    as a
FROM
    triangles;
    
SET @customerNo := 119;
 
SELECT country into @country
FROM customers
WHERE customernumber = @customerNo;
 
CALL GetCustomerShipping(@customerNo,@shipping);
 
SELECT @customerNo AS Customer,
       @country    AS Country,
       @shipping   AS Shipping;
 
 
SHOW PROCEDURE STATUS WHERE db = 'classicmodels';
SHOW tables;
 
SELECT IF(@a > 3, 'true', 'false');
       
       