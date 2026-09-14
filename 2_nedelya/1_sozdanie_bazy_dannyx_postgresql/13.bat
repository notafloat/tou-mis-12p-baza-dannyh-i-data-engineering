@echo off
chcp 1251 > nul
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

echo Нажмите любую клавишу, чтобы УДАЛИТЬ таблицы...
pause > nul

echo Удаление таблиц...
psql -c "DROP TABLE IF EXISTS \"карточки\", \"читатели\", \"книги\" CASCADE;"

echo Таблицы удалены.