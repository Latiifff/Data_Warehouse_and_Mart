-- Best Employee
CREATE VIEW dm.top_performing_employees AS
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
	e.department_id,
    f.performance_score
FROM 
    dwh.dim_employee e
INNER JOIN 
    dwh.fact_employee_performance f ON e.employee_id = f.employee_id
ORDER BY 
    f.performance_score DESC
LIMIT 20;