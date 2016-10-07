SELECT IF(Grades.Grade < 3, CONCAT('NULL'),Students.Name),
	Grades.Grade, 
 Students.Marks
FROM Students
INNER JOIN Grades ON Students.Marks >= Grades.Min_Mark AND Students.Marks <= Grades.Max_Mark
GROUP BY 
 Grades.Grade DESC, 
 Students.Name, Students.Marks ASC;
 
SELECT 
	IF(t2.grade < 3, CONCAT('null'),t1.name),
	t2.grade, 
	t1.marks
FROM students AS t1
INNER JOIN grades AS t2 
ON t1.marks >= t2.min_mark && t1.marks <= t2.max_mark
GROUP BY t2.grade DESC,
t1.name, t1.marks ASC;

SELECT *
FROM `top rankers`;
SET @june := 06;

SELECT @june+14;

select count(*) as cities , city.countrycode , sum(city.population) as popule  from world.city group by city.CountryCode order by popule desc;

SELECT IF(@june > 5, CONCAT('yes') +" "+@june+5, CONCAT('no'))