-- Employee Age Distribution
CREATE VIEW dm.employee_age_distribution AS
SELECT 
    CASE
        WHEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM e.birt_date) - 
             (CASE
                 WHEN TO_CHAR(CURRENT_DATE, 'MM-DD') < TO_CHAR(e.birt_date, 'MM-DD') THEN 1
                 ELSE 0
             END) >= 0 THEN EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM e.birt_date) - 
                                 (CASE
                                     WHEN TO_CHAR(CURRENT_DATE, 'MM-DD') < TO_CHAR(e.birt_date, 'MM-DD') THEN 1
                                     ELSE 0
                                 END)
        ELSE NULL
    END AS age,
    COUNT(*) AS employee_count
FROM 
    dwh.dim_employee e
GROUP BY 
    age;
