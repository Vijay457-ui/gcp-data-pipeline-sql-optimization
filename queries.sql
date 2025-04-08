
-- 1. Average Salary by Department
SELECT Department, AVG(`Annual Salary`) AS avg_annual_salary
FROM salaries_data.chicago_salaries
WHERE `Annual Salary` IS NOT NULL
GROUP BY Department
ORDER BY avg_annual_salary DESC;

-- 2. Top 10 Highest-Paid Job Titles
SELECT `Job Titles`, AVG(`Annual Salary`) AS avg_salary
FROM salaries_data.chicago_salaries
WHERE `Annual Salary` IS NOT NULL
GROUP BY `Job Titles`
ORDER BY avg_salary DESC
LIMIT 10;

-- 3. Employees Working More Than 40 Hours
SELECT *
FROM salaries_data.chicago_salaries
WHERE `Typical Hours` > 40;

-- 4. Convert Hourly to Estimated Annual Salary
SELECT Name, `Hourly Rate`, `Typical Hours`, (`Hourly Rate` * `Typical Hours` * 52) AS estimated_annual_salary
FROM salaries_data.chicago_salaries
WHERE `Hourly Rate` IS NOT NULL;

-- 5. Full-Time vs Part-Time Employee Count
SELECT `Full or Part-Time`, COUNT(*) AS employee_count
FROM salaries_data.chicago_salaries
GROUP BY `Full or Part-Time`;

-- 6. Average Salary Grouped for Scheduled Export
SELECT Department, AVG(`Annual Salary`) AS avg_salary
FROM salaries_data.chicago_salaries
WHERE `Annual Salary` IS NOT NULL
GROUP BY Department;
