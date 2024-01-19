SELECT id, 
       CASE
       WHEN order_status = 'OPEN' THEN 'Order is in open stat'
       WHEN order_status = 'CLOSED' THEN 'Order is closed'
       WHEN order_status = 'CANCELLED' THEN 'Order is cancelled'
       ELSE 'Unknown status'
       END AS full_order_status
FROM orders;