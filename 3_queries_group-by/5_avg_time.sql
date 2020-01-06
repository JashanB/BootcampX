SELECT students.name as student, ROUND((SUM(assignment_submissions.duration)/count(assignment_submissions.id)), 2) as average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY average_assignment_duration DESC; 
