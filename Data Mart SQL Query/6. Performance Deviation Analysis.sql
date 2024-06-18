-- Performance Deviation Analysis
CREATE VIEW dm.performance_deviation AS
SELECT 
    e.department_id,
    d.department_name,
    STDDEV(f.performance_score) AS performance_deviation
FROM 
    dwh.dim_department d
INNER JOIN 
    dwh.dim_employee e ON d.department_id = e.department_id
INNER JOIN 
    dwh.fact_employee_performance f ON e.employee_id = f.employee_id
GROUP BY 
    e.department_id, d.department_name;
	
	