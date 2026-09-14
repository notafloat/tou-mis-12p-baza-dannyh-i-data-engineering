@echo off
set PGUSER=postgres;
set PGDATABASE=books;

echo Структура таблицы книги
psql -c "\d \"книги\""
echo.

echo Структура таблицы читатели
psql -c "\d \"читатели\""
echo.

echo Структура таблицы карточки
psql -c "\d \"карточки\""
echo.