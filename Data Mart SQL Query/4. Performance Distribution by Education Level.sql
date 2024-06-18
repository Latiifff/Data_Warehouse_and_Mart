-- Performance Distribution by Education Level
CREATE VIEW dm.performance_distribution_by_education AS
SELECT 
    ed.education_level,
    COUNT(*) AS employee_count,
    AVG(f.performance_score) AS avg_performance_score
FROM 
    dwh.dim_education ed
INNER JOIN 
    dwh.dim_employee e ON ed.education_id = e.education_id
INNER JOIN 
    dwh.fact_employee_performance f ON e.employee_id = f.employee_id
GROUP BY 
    ed.education_level;