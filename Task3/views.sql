

--Number off lesson/month
CREATE VIEW lessons AS 
SELECT 
EXTRACT(MONTH FROM date) AS month,
COUNT(lesson_id) AS total,
SUM(CASE WHEN lesson.individual_id IS NULL THEN 0 ELSE 1 END) AS induvidual_lesson,
SUM(CASE WHEN lesson.group_id  IS NULL THEN 0 ELSE 1 END) AS group_lesson,
SUM(CASE WHEN lesson.ensamble_id IS NULL THEN 0 ELSE 1 END) AS ensemble_lesson
FROM schedule
NATURAL JOIN lesson
GROUP BY month
ORDER BY month;


--Get siblings new :)
CREATE VIEW siblings AS
SELECT COUNT(*) AS person, sibling
FROM (SELECT COUNT(sibling_id) AS sibling FROM sibling_discount GROUP BY student_id) AS ASS
GROUP BY sibling
UNION SELECT COUNT (*), 0 FROM student WHERE student_id NOT IN (SELECT student_id FROM sibling_discount);

--Instructor lessons
CREATE VIEW instructorlesson AS
SELECT COUNT(*) AS instructor_lessons, instructor_id
FROM schedule
NATURAL JOIN instructor
WHERE (SELECT EXTRACT(MONTH FROM date) = EXTRACT(MONTH FROM current_date))
GROUP BY instructor_id;

--List ensamble
CREATE VIEW ensambles AS
SELECT EXTRACT(dow FROM date) AS day, genre.genre,
CASE WHEN max_number - COUNT(student_id) > 2  THEN  'two or more' 
WHEN max_number - COUNT(student_id) BETWEEN 1 AND 2  THEN  'one or two' 
WHEN max_number - COUNT(student_id) = 0  THEN  'full' 
END AS amount
FROM schedule
NATURAL JOIN lesson
NATURAL JOIN ensamble
NATURAL JOIN genre
WHERE (SELECT EXTRACT(WEEK FROM date) = EXTRACT(WEEK FROM current_date + INTERVAL'1 WEEK'))
GROUP BY day, genre, max_number
ORDER BY day, genre;
