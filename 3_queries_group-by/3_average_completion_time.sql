SELECT students.name AS student, AVG(duration)
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
WHERE end_date IS NULL 
GROUP by students.name
ORDER BY AVG(duration) DESC;