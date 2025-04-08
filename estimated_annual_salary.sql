SELECT Name, `Hourly Rate`, `Typical Hours`,
       ROUND(`Hourly Rate` * `Typical Hours` * 52, 2) AS estimated_annual_salary
FROM `salaries_data.chicago_salaries`
WHERE `Hourly Rate` IS NOT NULL AND `Typical Hours` IS NOT NULL;