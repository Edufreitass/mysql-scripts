-- UPDATE atualiza registros da tabela
-- Aviso: sempre use o WHERE ao atualizar um registro
UPDATE users SET 
email = 'merrildunn@email.com', 
password_hash = 'BQS83WCA3QQ'
WHERE id = 119;

-- Aviso: use SELECT para garantir que está
-- atualizando os registros corretos
SELECT * FROM users WHERE id = 119;