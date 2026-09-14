-- Создание базы данных
CREATE DATABASE university_db;

-- Создание таблиц
CREATE TABLE groups (
    group_id SERIAL PRIMARY KEY,
    group_name VARCHAR(20) NOT NULL UNIQUE,
    admission_year INTEGER NOT NULL,
    specialty VARCHAR(100) NOT NULL
);

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    email VARCHAR(100) UNIQUE,
    group_id INTEGER,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_student_group
        FOREIGN KEY (group_id)
        REFERENCES groups(group_id)
        ON DELETE SET NULL
);

CREATE TABLE subjects (
    subject_id SERIAL PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL UNIQUE,
    credits INTEGER NOT NULL CHECK (credits > 0),
    semester INTEGER NOT NULL CHECK (semester BETWEEN 1 AND 8)
);

CREATE TABLE grades (
    grade_id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL,
    subject_id INTEGER NOT NULL,
    grade INTEGER NOT NULL CHECK (grade BETWEEN 0 AND 100),
    grade_date DATE DEFAULT CURRENT_DATE,

    CONSTRAINT fk_grade_student
        FOREIGN KEY (student_id)
        REFERENCES students(student_id)
        ON DELETE CASCADE,
        
    CONSTRAINT fk_grade_subject
        FOREIGN KEY (subject_id)
        REFERENCES subjects(subject_id)
        ON DELETE CASCADE
);

-- Добавление данных
INSERT INTO groups (group_name, admission_year, specialty)
VALUES
    ('CS-101', 2026, 'Информационные системы'),
    ('CS-102', 2026, 'Вычислительная техника'),
    ('MIS-12', 2025, 'Data Engineering');
INSERT INTO students
    (last_name, first_name, birth_date, email, group_id)
VALUES
    ('Алиев', 'Данияр', '2007-05-12',
     'd.aliyev@example.com', 1),

    ('Серикова', 'Айдана', '2006-11-20',
     'a.serikova@example.com', 1),

    ('Иванов', 'Алексей', '2007-02-15',
     'a.ivanov@example.com', 2);
INSERT INTO subjects (subject_name, credits, semester)
VALUES
    ('Базы данных', 5, 1),
    ('Веб-технологии', 5, 1),
    ('Основы Data Engineering', 4, 2);
INSERT INTO grades (student_id, subject_id, grade)
VALUES
    (1, 1, 90),
    (1, 2, 85),
    (2, 1, 95),
    (2, 2, 88),
    (3, 1, 76);
