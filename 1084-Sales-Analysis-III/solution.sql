SELECT pr.product_id,pr.product_name FROM Product pr
LEFT JOIN Sales sa ON pr.product_id=sa.product_id
GROUP BY pr.product_id,pr.product_name
HAVING MIN(sa.sale_date)>='2019-01-01' AND MAX (sa.sale_date)<='2019-03-31'
