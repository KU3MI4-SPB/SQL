SELECT 
id, 
created_at,
LEAD(created_at) OVER(ORDER BY created_at) AS lead_time,
TIMESTAMPDIFF (MINUTE, created_at, LEAD(created_at) OVER(ORDER BY created_at)) AS minute_lead_diff
FROM messages;