SELECT EM.employee_id, (CASE WHEN EM.employee_id % 2 <> 0 AND EM.name NOT LIKE 'M%' THEN EM.salary ELSE 0 END) AS 'bonus' FROM Employees EM
ORDER BY EM.employee_id
