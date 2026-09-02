-- 6. Выведите студентов только одной учебной группы.
SELECT    
    s.last_name,
    s.first_name,
    g.group_name
FROM students AS s
LEFT JOIN groups AS g
    ON s.group_id = g.group_id
WHERE g.group_id = 'CS-101'
ORDER BY g.group_name;
