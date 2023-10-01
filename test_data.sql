-- Создаем базу данных для тестов
CREATE DATABASE testdb;

-- Подключаемся к новой базе данных
\c testdb;

-- Создаем таблицу для тестовых данных
CREATE TABLE test_table (
    id serial PRIMARY KEY,
    name VARCHAR (255),
    age INT
);

-- Вставляем тестовые данные
INSERT INTO test_table (name, age)
VALUES
    ('John Doe', 30),
    ('Jane Smith', 25),
    ('Bob Johnson', 35);

-- mysecretpassword