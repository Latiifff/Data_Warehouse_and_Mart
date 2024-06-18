-- Employee Performance by Gender:
CREATE VIEW dm.employee_performance_by_gender AS
SELECT 
    e.gender,
    AVG(f.performance_score) AS avg_performance_score
FROM 
    dwh.dim_employee e
INNER JOIN 
    dwh.fact_employee_performance f ON e.employee_id = f.employee_id
GROUP BY 
    e.gender;
	
	
	