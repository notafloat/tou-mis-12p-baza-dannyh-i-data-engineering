-- 7. Найдите студентов, средний балл которых выше 85. 
SELECT
    s.last_name,
    s.first_name,
    ROUND(AVG(gr.grade), 2) AS average_grade
FROM students AS s
JOIN grades AS gr
    ON s.student_id = gr.student_id
GROUP BY s.student_id, s.last_name, s.first_name
HAVING AVG(gr.grade) > 85
ORDER BY average_grade DESC;