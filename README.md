# ДЗ 20. Операції DDL, DML

1. Створити таблицю Homework. Ця таблиця складається з атрибутів: id, name, description
   a. Для атрибуту ID має бути забезпечене обмеження Primary Key та AutoIncrement
2. Створити таблицю Lesson. Ця таблиця складається з атрибутів: id, name, updatedAt, homework_id (зв'язок one-to-one)
   a. Для атрибуту ID має бути забезпечене обмеження Primary Key та AutoIncrement
   b. Пов'язано з таблицею Homework через Foreign Key
3) Створити таблицю Schedule. Ця таблиця складається з атрибутів: id, name, updatedAt, lessons (зв'язок many-to-many)
   a. Для атрибуту ID має бути забезпечене обмеження Primary Key і AutoIncrement
   b. Зв'язано з таблицею Lesson через Foreign Key
 4) Перенести ініціалізаційні sql-скрипти у файл initsql
. ! Файл init.sql і є результатом завдання, яке має бути додане як рішення 
