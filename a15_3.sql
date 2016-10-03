select * from h1_doctors
inner join h3_specialize using (doc_id)
inner join h4_schedule using (doc_id) order by sch_id
natural join h2_category on hacker_rank.specialize.description = hacker_rank.category.id;


UPDATE h1_doctors SET h1_doctors.doc_id = '3'
WHERE h1_doctors.doc_id = '19' 

SELECT *
FROM h1_doctors, h3_specialize
WHERE h1_doctors.doc_id = h3_specialize.doc_id 