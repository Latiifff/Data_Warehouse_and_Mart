-- New Hire Performance

CREATE VIEW dm.new_hire_performance AS
SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    e.hire_date,
    f.performance_score
FROM 
    dwh.dim_employee e
INNER JOIN 
    dwh.fact_employee_performance f ON e.employee_id = f.employee_id
ORDER BY 
    e.hire_date DESC;



