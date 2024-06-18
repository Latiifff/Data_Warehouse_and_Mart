-- Employee Performance by Department:
CREATE VIEW dm.employee_performance_by_department AS
SELECT 
    d.department_id,
    d.department_name,
    CAST(AVG(f.performance_score) AS DECIMAL(10, 2)) AS avg_performance_score
FROM 
    dwh.dim_department d
INNER JOIN 
    dwh.dim_employee e ON d.department_id = e.department_id
INNER JOIN 
    dwh.fact_employee_performance f ON e.employee_id = f.employee_id
GROUP BY 
    d.department_id, d.department_name
ORDER BY 
    avg_performance_score DESC;
	
	

