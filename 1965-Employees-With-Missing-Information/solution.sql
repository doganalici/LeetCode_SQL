SELECT COALESCE(EMP.employee_id, SAL.employee_id) AS employee_id FROM Employees EMP
FULL OUTER JOIN Salaries SAL ON EMP.employee_id = SAL.employee_id
WHERE EMP.employee_id IS NULL OR SAL.salary IS NULL
ORDER BY employee_id 
