select aa.* from ( 
SELECT avg(a.population)as abc , a.countrycode, b.Name , b.Continent as con
FROM country AS b
left outer JOIN city AS a ON a.CountryCode = b.Code 
GROUP BY countrycode) as aa group by con;

select t1.* from country as t1 left outer join city as t2 on t2.CountryCode = t1.Code  group by t1.Continent;

select   @rownum := @rownum + 1 AS rank , t1.`*`  from country t1 , city t2 ,(SELECT @rownum := 0) r ;


SELECT  
       @rownum := @rownum + 1 AS rank
  FROM  
       (SELECT @rownum := 0) r;

select count(*) from city;

select T1.CountryCode, T2.Code  from  city T1 ,country T2 where T1.CountryCode = T2.Code and T1.Name = T2.Capital