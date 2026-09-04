-- 1. Создайте таблицу teachers со следующими полями: 
-- идентификатор преподавателя; 
-- фамилия; 
-- имя; 
-- электронная почта; 
-- кафедра. 
CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    departament VARCHAR(100)
);