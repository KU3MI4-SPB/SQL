SELECT 
    CASE 
        WHEN p.gender = 'f' THEN 'женский'
        WHEN p.gender = 'm' THEN 'мужской'
    END AS пол,
    COUNT(l.id) AS количество_лайков
FROM 
    likes l
INNER JOIN profiles p ON l.user_id = p.user_id
GROUP BY 
    p.gender
ORDER BY 
    количество_лайков DESC;