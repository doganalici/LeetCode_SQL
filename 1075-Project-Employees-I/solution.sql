SELECT pr.project_id,ROUND(AVG(CAST(em.experience_years AS DECIMAL(10,2))),2) AS average_years FROM Project pr
LEFT JOIN Employee em ON pr.employee_id=em.employee_id
GROUP BY pr.project_id
