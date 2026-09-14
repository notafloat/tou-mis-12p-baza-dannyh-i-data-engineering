-- Измените таблицу «карточки» добавив первичный ключ к полю
-- идентификатор; внешние ключи к полям идентификатор книги и
-- идентификатор читателя.
ALTER TABLE карточки ADD PRIMARY KEY (идентификатор),
ADD CONSTRAINT fk_карточки_книги FOREIGN KEY (идентификатор_книги) REFERENCES книги (идентификатор) ON DELETE CASCADE,
ADD CONSTRAINT fk_карточки_читатели FOREIGN KEY (идентификатор_читателя) REFERENCES читатели (идентификатор) ON DELETE CASCADE;