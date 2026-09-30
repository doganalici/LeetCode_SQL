SELECT sp.name FROM SalesPerson sp 
WHERE sales_id NOT IN
(SELECT ord.sales_id FROM Company cp
INNER JOIN Orders ord ON cp.com_id=ord.com_id
WHERE cp.name='RED')
