SELECT cohorts.name as cohort, COUNT(assignment_submissions.id)
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.id) DESC;