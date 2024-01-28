SELECT id 
FROM users 
WHERE id NOT IN (SELECT DISTINCT from_user_id FROM messages);