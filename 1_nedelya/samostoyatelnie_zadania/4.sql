-- 4. Свяжите дисциплины с преподавателями посредством внешнего ключа.
-- Связывание в уже созданной таблице
ALTER TABLE subjects
ADD CONSTRAINT fk_subject_teacher
    FOREIGN KEY (teacher_id)
    REFERENCES teachers(teacher_id)
    ON DELETE CASCADE;

-- Связывание в не созданной таблице
-- CREATE TABLE subjects (
--     subject_id SERIAL PRIMARY KEY,
--     subject_name VARCHAR(100) NOT NULL UNIQUE,
--     credits INTEGER NOT NULL CHECK (credits > 0),
--     semester INTEGER NOT NULL CHECK (semester BETWEEN 1 AND 8),
--     teacher_id INTEGER NOT NULL,

--     CONSTRAINT fk_subject_teacher
--         FOREIGN KEY (teacher_id)
--         REFERENCES teachers(teacher_id)
--         ON DELETE CASCADE
-- );

