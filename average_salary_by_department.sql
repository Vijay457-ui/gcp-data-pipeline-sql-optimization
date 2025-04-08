SELECT Department, AVG(`Annual Salary`) AS avg_annual_salary
FROM `salaries_data.chicago_salaries`
WHERE `Annual Salary` IS NOT NULL
GROUP BY Department
ORDER BY avg_annual_salary DESC;