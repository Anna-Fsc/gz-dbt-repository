select
om.orders_id,
om.date_date,
ROUND(sum_margin + (shipping_fee - logcost - ship_cost),2) AS operational_margin
FROM {{ ref('int_orders_margin') }} AS om
JOIN {{ ref('stg_raw__ship') }} AS s
USING (orders_id)
