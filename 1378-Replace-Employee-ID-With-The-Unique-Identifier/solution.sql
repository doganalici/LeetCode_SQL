SELECT EU.unique_id, EM.name FROM Employees EM
LEFT JOIN EmployeeUNI EU ON EU.id = EM.id
