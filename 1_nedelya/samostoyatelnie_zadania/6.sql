-- 6. Выведите студентов только одной учебной группы.
-- По id группы
SELECT    
    s.last_name,
    s.first_name,
    g.group_name
FROM students AS s
INNER JOIN groups AS g
    ON s.group_id = g.group_id
WHERE g.group_id = 1
ORDER BY s.last_name;

-- По названию группы
-- SELECT    
--     s.last_name,
--     s.first_name,
--     g.group_name
-- FROM students AS s
-- INNER JOIN groups AS g
--     ON s.group_id = g.group_id
-- WHERE g.group_name = 'CS-101'
-- ORDER BY s.last_name;

