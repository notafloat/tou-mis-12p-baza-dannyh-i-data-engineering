-- 3. Добавьте в таблицу subjects поле teacher_id. 
-- Добавление в не созданную таблицу
CREATE TABLE subjects (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL UNIQUE,
    credits INTEGER NOT NULL CHECK (credits > 0),
    semester INTEGER NOT NULL CHECK (semester BETWEEN 1 AND 8),
    teacher_id INTEGER NOT NULL,
);

-- Добавление в уже созданную таблицу
ALTER TABLE subjects
ADD COLUMN teacher_id INT NOT NULL;