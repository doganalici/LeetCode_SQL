SELECT EM.employee_id,EM.name, COUNT(EMP.reports_to) AS 'reports_count', ROUND(AVG(CAST(EMP.age AS FLOAT)),0) AS 'average_age' FROM Employees EM
JOIN Employees EMP ON EM.employee_id = EMP.reports_to
GROUP BY EM.employee_id,EM.name
ORDER BY EM.employee_id;
