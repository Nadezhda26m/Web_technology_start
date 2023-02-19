-- Создать таблицу с информацией об одногруппниках. В таблице должно быть 
-- четыре поля: id, name, age, address. 
-- Все поля в таблице обязательны для заполнения.
-- Необходимо добавить 5-10 одногруппников в данную таблицу.

CREATE TABLE IF NOT EXISTS users(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name TEXT NOT NULL,
  age INT NOT NULL, 
  address TEXT NOT NULL
);

INSERT INTO users (name, age, address) 
VALUES('Мария', 20, 'г. Москва, ул. Ххх');
INSERT INTO users (name, age, address) 
VALUES('Александр', 15, 'г. Тула, ул. Ххх');
INSERT INTO users (name, age, address) 
VALUES('Петр', 34, 'г. Москва, ул. Ххх');
INSERT INTO users (name, age, address) 
VALUES('Дмитрий', 47, 'г. Рязань, ул. Ххх');
INSERT INTO users (name, age, address) 
VALUES('Сергей', 28, 'г. Москва, ул. Ххх');
INSERT INTO users (name, age, address) 
VALUES('Анастасия', 18, 'г. Смоленск, ул. Ххх');
INSERT INTO users (name, age, address) 
VALUES('Владимир', 30, 'г. Москва, ул. Ххх');
INSERT INTO users (name, age, address) 
VALUES('Елена', 24, 'г. Москва, ул. Ххх');


-- Выборка
-- Необходимо написать запрос на получение имен всех одногруппников 
-- (только имен, без всего остального), которые живут в Москве 
-- и их возраст находится в диапазоне [18, 30) лет.
SELECT name FROM users WHERE (age >= 18 AND age < 30) 
AND address LIKE '%Москва%';
