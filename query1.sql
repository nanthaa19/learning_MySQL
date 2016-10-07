use hacker_rank;
show tables;

SELECT 
    *
FROM
    grades;
SELECT 
    *
FROM
    students;

SELECT 
    id, IF(grade < 3, CONCAT('null'), name), grade, marks
FROM
    students
        INNER JOIN
    grades ON marks >= min_mark AND marks <= max_mark
ORDER BY marks DESC;

SELECT 
    id, IF(grade < 3, CONCAT(''), name), grade, marks
FROM
    students
        INNER JOIN
    grades ON marks >= min_mark AND marks <= max_mark
ORDER BY marks DESC;

SELECT 
    id, IF(grade > 3, name, CONCAT('null')), grade, marks
FROM
    students
        JOIN
    grades ON marks BETWEEN min_mark AND max_mark
ORDER BY marks DESC;

select sql_cache from information_schema.tables;

show table status;

select * from hacker_rank.grades;


SELECT 
    table_schema,
    CONCAT(ROUND(SUM(data_length + index_length) / 1024 / 1024,
                    2),
            ' kB'),
    data_length,
    index_length
FROM
    information_schema.TABLES
GROUP BY table_schema;
