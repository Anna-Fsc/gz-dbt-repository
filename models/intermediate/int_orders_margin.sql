select
orders_id,
date_date,
ROUND(sum(revenue),2) AS sum_revenue, 
ROUND(sum(revenue),2) AS sum_revenue_2,
sum(quantity) AS sum_quantity,
ROUND(sum(margin),2) AS sum_margin,
ROUND(sum(purchase_cost),2) AS sum_purchase_cost
FROM {{ ref('int_sales_margin') }}
GROUP BY orders_id, date_date
