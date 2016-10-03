SELECT DISTINCT *, name
FROM world.city
WHERE (name LIKE 'a%' and ( name like '%a' or name like '%e' or name like '%i' or name like '%o' )) and CountryCode = 'IND';



select distinct 
 *,   city.name
from 
    city  
WHERE 
(city.name  not LIKE 'a%' and ( city.name not LIKE '%a' or city.name not LIKE '%e' or city.name LIKE '%i' or city.name LIKE '%o' or city.name LIKE '%u') ) and 
(city.name not LIKE 'e%' and ( city.name not LIKE '%a' or city.name not LIKE '%e' or city.name LIKE '%i' or city.name LIKE '%o' or city.name LIKE '%u') ) and 
(city.name not LIKE 'i%' and ( city.name not LIKE '%a' or city.name not LIKE '%e' or city.name LIKE '%i' or city.name LIKE '%o' or city.name LIKE '%u') ) and 
(city.name not LIKE 'o%' and ( city.name not LIKE '%a' or city.name not LIKE '%e' or city.name LIKE '%i' or city.name LIKE '%o' or city.name LIKE '%u') ) and 
(city.name not LIKE 'u%' and ( city.name not LIKE '%a' or city.name not LIKE '%e' or city.name LIKE '%i' or city.name LIKE '%o' or city.name LIKE '%u') )
and CountryCode = 'IND' and District = 'tamil nadu' ;
 

