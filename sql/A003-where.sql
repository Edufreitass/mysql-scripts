-- where filtra registros
-- operadores de compara��o = < <= > >= <> !=
-- operadores l�gicos AND e OR 
SELECT * FROM users 
WHERE created_at < '2021-09-20 22:52:22'
AND first_name = 'Luiz' AND password_hash = 'a_hash';