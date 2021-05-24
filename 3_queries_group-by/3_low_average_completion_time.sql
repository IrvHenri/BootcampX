SELECT students.name AS student, avg(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as average_estimated_duration 
FROM students
JOIN assignment_submissions ON students.id = assignment_submissions.student_id 
JOIN assignments ON assignments.id = assignment_id
WHERE end_date IS NULL 
GROUP by students.name
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration;