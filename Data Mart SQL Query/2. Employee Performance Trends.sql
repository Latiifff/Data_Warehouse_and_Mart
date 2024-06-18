-- Employee Performance Trends
CREATE VIEW dm.employee_performance_trend AS
SELECT 
    EXTRACT(YEAR FROM performance_date) AS performance_year,
    EXTRACT(MONTH FROM performance_date) AS performance_month,
    CAST(AVG(performance_score) AS DECIMAL(10, 2)) AS avg_performance_score
FROM 
    dwh.fact_employee_performance
GROUP BY 
    performance_year, performance_month
ORDER BY 
    performance_year, performance_month;