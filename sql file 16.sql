SELECT salary, group_concat(salary), count(*),
    CASE
        WHEN salary BETWEEN 20000 AND 25000 THEN 'Gold'
        WHEN
			salary BETWEEN 10000 AND 20000
        THEN
            CASE
                WHEN salary BETWEEN 10000 AND 15000 THEN 'Silver'
                WHEN salary BETWEEN 15000 AND 20000 THEN 'Bronze'
                ELSE 'B'
            END
        ELSE 'Loser'
    END as ABC
FROM
    hr.employees group by abc order by abc;
    
    use hr;
    
SELECT IF((SELECT CASE WHEN 1>0 THEN true ELSE false END),'true','false');

select nullif(null,2);
select ifnull(null,null);

select
   min(o.Doctor),min(o.Professor),min(o.Singer),min(o.Actor)
from
    (select
        case when occupation='Doctor' then @d:=@d+1
             when occupation='Professor' then @p:=@p+1
             when occupation='Singer' then @s:=@s+1
             when occupation='Actor' then @a:=@a+1 end as row,
        case when occupation='Doctor' then name end as Doctor,
        case when occupation='Professor' then name end as Professor,
        case when occupation='Singer' then name end as Singer,
        case when occupation='Actor' then name end as Actor
     from occupations join (select @d:=0, @p:=0, @s:=0,@a:=0) as r 
     order by name) o
group by row;


select 
    N,
    if(P is null,'Root', if((select count(*) from BST where P = B.N) > 0,
            'Inner',
            'Leaf'))
from
    BST as B
order by N;

SELECT DISTINCT
    Company.company_code AS Code,
    Company.founder,
(SELECT COUNT(DISTINCT Lead_Manager.lead_manager_code) FROM Lead_Manager WHERE Lead_Manager.company_code = Code),
(SELECT COUNT(DISTINCT Senior_Manager.senior_manager_code) FROM Senior_Manager WHERE Senior_Manager.company_code = Code),
(SELECT COUNT(DISTINCT Manager.manager_code) FROM Manager WHERE Manager.company_code = Code), 
(SELECT COUNT(DISTINCT Employee.employee_code)FROM Employee WHERE Employee.company_code = Code)
FROM
    Company
ORDER BY Code;

SELECT 
    REPEAT('* ', @NUMBER:=@NUMBER + 1)
FROM
    information_schema.tables,
    (SELECT @NUMBER:=0) star
LIMIT 500;

DECLARE @i INT = 2
DECLARE @j INT = 2
DECLARE @n INT = 1000
DECLARE @isPrime BIT = 1
DECLARE @primes VARCHAR(MAX)

WHILE @i <= @n
BEGIN
    
    WHILE(@j <= FLOOR(SQRT(@i)))
    BEGIN
        IF(@i % @j = 0)
        BEGIN
            SET @isPrime = 0
            SET @j = 999
        END
        SET @j += 1
    END
    
    if(@isPrime = 1)
        SET @primes = CONCAT(COALESCE(@primes + '&', ''), @i)

    SET @i += 1
    SET @j = 2
    SET @isPrime = 1
END

PRINT @prime;

SELECT 
    *
FROM
    information_schema.tables,
    (SELECT @NUMBER:=0) star
LIMIT 3;

SELECT 
    REPEAT('* ', @NUMBER:=@NUMBER + 1)
FROM
    classicmodels.customers,
    (SELECT @NUMBER:=0) star
LIMIT 500;
use hr;
show columns from hr.employees;

select BINARY 'DATS' like 'dats';