SELECT 
    *
FROM
    hr.regions;

SELECT 
    *
FROM
    hr.countries;
    
SELECT 
    COUNT(*), region_name
FROM
    hr.countries
        NATURAL JOIN
    hr.regions
GROUP BY region_name;


SELECT 
    COUNT(region_id),
    GROUP_CONCAT(distinct country_name, ' '),
    GROUP_CONCAT(country_id),
    region_name
FROM
    hr.countries
        NATURAL JOIN
    hr.regions
GROUP BY region_name;


 SELECT 
    COUNT(region_id),
    GROUP_CONCAT(DISTINCT country_name ORDER BY country_name DESC SEPARATOR ' * '),
    region_name
FROM
    hr.countries
        NATURAL JOIN
    hr.regions
GROUP BY region_name;


select * from hr.employees;
