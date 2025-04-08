SELECT `Job Titles`, AVG(`Annual Salary`) AS avg_salary
FROM `salaries_data.chicago_salaries`
WHERE `Annual Salary` IS NOT NULL
GROUP BY `Job Titles`
ORDER BY avg_salary DESC
LIMIT 10;