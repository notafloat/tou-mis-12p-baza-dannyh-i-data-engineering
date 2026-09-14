-- Получение результатов обучения
SELECT
    s.last_name,
    s.first_name,
    sub.subject_name,
    gr.grade
FROM grades AS gr
JOIN students AS s
    ON gr.student_id = s.student_id
JOIN subjects AS sub
    ON gr.subject_id = sub.subject_id
ORDER BY s.last_name, sub.subject_name;
