-- Seleciona a base de dados
USE base_de_dados;
-- Mostra as tabelas da base de dados
SHOW tables;
-- Descreve as colunas da tabela
DESCRIBE users;
-- Inserir registros na base de dados;
INSERT INTO users 
(first_name, last_name, email, password_hash) 
VALUES ("Helena", "A.", "1@email.com", "3_hash"),
("Joana", "B.", "2@email.com", "4_hash"),
("Rosana", "C.", "3@email.com", "5_hash");