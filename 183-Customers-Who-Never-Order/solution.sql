SELECT cs.name AS Customers FROM Customers cs
LEFT JOIN Orders ord ON cs.id=ord.customerId
WHERE ord.customerId IS NULL
