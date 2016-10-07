select * from h1_doctors;
select * from h2_category;
select * from h3_specialize;
select * from h4_schedule;


SELECT 
    t1.doc_id,
    t1.doc_name,
    t1.doc_gender,
    t3.specalist_description, -- group_concat(t3.specalist_description) ,
    t4.sch_day -- , group_concat(t4.sch_day)
FROM
    h3_specialize AS t2
        INNER JOIN
    h1_doctors AS t1 ON t2.doc_id = t1.doc_id
        INNER JOIN
    h2_category AS t3 ON t3.id = t2.description
        INNER JOIN
    h4_schedule AS t4 ON t1.doc_id = t4.doc_id /*-- group by t4.sch_day --*/ group by t3.specalist_description;
    
    
SELECT 
    *
FROM
    grades;
    
SELECT 
    *
FROM
    students;
    
SELECT 
    *
FROM
    ranks;
rename table ranks to result;

SELECT *
   , a1.name, a1.marks, a2.grade, a2.min_mark, a2.max_mark
FROM
    students AS a1
        INNER JOIN
    grades AS a2
WHERE
    a1.marks > min_mark
        AND a1.marks < max_mark
ORDER BY a2.grade DESC;

 select * from country ;