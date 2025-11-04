select
orders_id,
date_date,
revenue,
quantity,
s.quantity * p.purchase_price AS purchase_cost,
ROUND(s.revenue - (s.quantity * p.purchase_price),2) AS margin
from {{ ref('stg_raw__sales') }} AS s
LEFT JOIN {{ ref('stg_raw__products')}} AS p
USING (products_id)

