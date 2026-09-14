UPDATE читатели
SET
    тип = CASE тип
        WHEN 'с' THEN 'п'
        WHEN 'п' THEN 'с'
    END;