SELECT 
    *
FROM
    h1_doctors
        INNER JOIN
    h3_specialize USING (doc_id)
        INNER JOIN
    h4_schedule USING (doc_id)
ORDER BY sch_id;

use hacker_rank;
UPDATE h1_doctors,
    h3_specialize 
SET 
    h1_doctors.doc_id = '3',
    h3_specialize.doc_id = '3'
WHERE
    doc_id = '19';
    
SELECT 
    e.first_name, e.last_name, e.hire_date
FROM
    employees e
        JOIN
    employees davies ON (davies.last_name = 'Jones')
WHERE
    davies.hire_date < e.hire_date;
    
SELECT 
    department_name AS 'Department Name',
    COUNT(*) AS 'No of Employees'
FROM
    departments
        INNER JOIN
    employees ON employees.department_id = departments.department_id
GROUP BY departments.department_id , department_name
ORDER BY department_name;

SELECT 
    t1.description
FROM
    h3_specialize AS t1
        INNER JOIN
    h1_doctors AS t2 ON t1.descrption;