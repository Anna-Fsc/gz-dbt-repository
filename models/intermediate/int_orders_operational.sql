select
om.orders_id,
om.date_date,
om.sum_quantity,
om.sum_revenue,
om.sum_purchase_cost,
om.sum_margin,
s.shipping_fee,
s.logcost,
s.ship_cost,
ROUND(sum_margin + (shipping_fee - logcost - ship_cost),2) AS operational_margin
FROM {{ ref('int_orders_margin') }} AS om
JOIN {{ ref('stg_raw__ship') }} AS s
USING (orders_id)
