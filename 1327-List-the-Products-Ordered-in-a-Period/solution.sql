SELECT PR.product_name, SUM(ORD.unit) AS unit FROM Products PR
INNER JOIN Orders ORD ON PR.product_id = ORD.product_id
WHERE ORD.order_date>='2020-02-01' AND ORD.order_date <= '2020-02-29'
GROUP BY PR.product_name HAVING SUM(ORD.unit)>=100
