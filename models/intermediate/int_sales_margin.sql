SELECT 
(s.revenue-p.purchase_price) AS margin,
(s.quantity*p.purchase_price) AS purchase_cost
FROM {{ref("stg_data__sales")}} s 
LEFT JOIN {{ref("stg_data__product")}} p 
USING (products_id) 
