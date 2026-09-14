-- Получение списка студентов вместе с названием группы
SELECT
    s.student_id,
    s.last_name,
    s.first_name,
    g.group_name
FROM students AS s
LEFT JOIN groups AS g
    ON s.group_id = g.group_id
ORDER BY s.last_name;
