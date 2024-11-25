SELECT course_name || ' - ' || semester AS course_info
FROM courses;

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE '%Fri%';

SELECT title, due_date
FROM assignments
WHERE due_date > date();

SELECT status, count(*) AS assignment_count
FROM assignments
GROUP BY status;

SELECT course_name, length(course_name) AS name_length
FROM courses
ORDER BY name_length DESC
LIMIT 1;

SELECT upper(course_name) AS uppercase_name
FROM courses;

SELECT title
FROM assignments
WHERE due_date LIKE '%-09-%';

SELECT title
FROM assignments
WHERE due_date IS NULL;