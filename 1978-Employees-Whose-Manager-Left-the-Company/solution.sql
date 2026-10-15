SELECT EMP1.employee_id FROM Employees EMP1
LEFT JOIN Employees EMP2 ON EMP1.manager_id = EMP2.employee_id
WHERE EMP1.salary < 30000 AND EMP1.manager_id IS NOT NULL AND EMP2.employee_id IS NULL
ORDER BY employee_id
