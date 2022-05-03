SELECT assignments.day, COUNT(assignments.id) as number_of_assignments, sum(assignments.duration) as duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;