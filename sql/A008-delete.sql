-- DELETE apaga registros da tabela
-- Aviso: sempre use o WHERE ao deletar um registro
DELETE FROM users WHERE id = 115;

-- Aviso: use SELECT para garantir que está
-- apagando os valores corretos
SELECT * FROM users WHERE id BETWEEN 110 AND 115;