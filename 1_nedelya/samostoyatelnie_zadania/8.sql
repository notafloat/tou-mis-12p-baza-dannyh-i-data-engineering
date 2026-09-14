-- 8. Определите максимальную и минимальную оценки по каждой дисциплине. 
SELECT 
    s.subject_name, 
    MAX(g.grade) as max_grade, 
    MIN(g.grade) as min_grade
FROM subjects AS s
JOIN grades AS g
    ON s.subject_id = g.subject_id
GROUP BY s.subject_name
ORDER BY s.subject_name DESC;