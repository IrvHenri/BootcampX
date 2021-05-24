SELECT  SUM(duration) AS  total_duration 
FROM assignment_submissions 
INNER JOIN students ON student_id = students.id 
INNER JOIN cohorts ON students.cohort_id = cohorts.id 
WHERE cohorts.name  = 'FEB12';