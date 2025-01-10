SELECT 
s.orders_id, s.date_date, s.revenue, s.quantity,
(s.revenue-p.purchase_price) AS margin,
(s.quantity*p.purchase_price) AS purchase_cost
FROM {{ref("stg_data__sales")}} s 
LEFT JOIN {{ref("stg_data__product")}} p 
USING (products_id) 
