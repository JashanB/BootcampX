SELECT day, count(assignments.*), SUM(duration) as duration
FROM assignments
GROUP BY day
ORDER BY day;
