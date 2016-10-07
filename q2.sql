SELECT aa.*
FROM (
SELECT AVG(a.population) AS c1, a.countrycode, b.Name, b.Continent AS c4
FROM country AS b
LEFT OUTER
JOIN city AS a ON a.CountryCode = b.Code
GROUP BY countrycode) AS aa
GROUP BY c4;

SELECT AVG(t1.population), t1.countrycode,t2.Continent
FROM city AS t1
INNER JOIN country AS t2 ON t1.CountryCode = t2.Code
GROUP BY t2.Continent;

SELECT t2.Continent, ROUND(AVG(t1.population))
FROM city AS t1
INNER JOIN country AS t2 ON t1.CountryCode = t2.Code
GROUP BY t2.Continent;

SELECT AVG(city.population),country.Continent
FROM city
INNER JOIN country ON city.CountryCode = country.Code
WHERE continent = 'North america';

SELECT country.Continent AS c1, ROUND(AVG(city.population)) AS c2
FROM city
INNER JOIN country ON city.CountryCode = country.Code
GROUP BY continent
ORDER BY c2 ASC;

select 
    country.Continent as c1 ,
    avg(city.population) as c2 
from city inner join country on city.CountryCode = country.Code  
group by continent order by c2 asc;

select round(109189.6667 - .5);
select round(round(109189.6667) + 2*(109189.6667 - round(109189.6667)));
