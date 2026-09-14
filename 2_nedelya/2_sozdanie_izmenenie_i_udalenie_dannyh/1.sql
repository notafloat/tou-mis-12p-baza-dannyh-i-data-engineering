CREATE TABLE книги (
    идентификатор SERIAL PRIMARY KEY,
    название VARCHAR(20),
    автор VARCHAR(20),
    тип VARCHAR(1),
    количество INT,
    год_издания DATE
);

CREATE TABLE читатели (
    идентификатор SERIAL PRIMARY KEY,
    имя VARCHAR(20),
    фамилия VARCHAR(20),
    тип VARCHAR(1)
);

CREATE TABLE карточки (
    идентификатор SERIAL PRIMARY KEY,
    идентификатор_книги INT,
    идентификатор_читателя INT,
    дата_выдачи DATE,
    дата_возврата DATE,
    CONSTRAINT fk_карточки_книги FOREIGN KEY (идентификатор_книги) REFERENCES книги (идентификатор) ON DELETE CASCADE,
    CONSTRAINT fk_карточки_читатели FOREIGN KEY (идентификатор_читателя) REFERENCES читатели (идентификатор) ON DELETE CASCADE
);