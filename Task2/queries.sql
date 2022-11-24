--Get siblings
SELECT p1.first_name, p1.last_name, p2.first_name, p2.last_name
FROM person AS p1
INNER JOIN student AS s ON p1.id=s.person_id
INNER JOIN sibling_discount AS sd ON s.student_id=sd.student_id
INNER JOIN student AS s2 ON sd.sibling_id=s2.student_id
INNER JOIN person AS p2 ON s2.person_id=p2.id;
