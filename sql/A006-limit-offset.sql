-- LIMIT limita a quantidade de valores
-- variações do LIMIT 
-- LIMIT 3
-- LIMIT 'offset', 'limit'
-- LIMIT 0, 3
-- OFFSET desloca o cursor para exibir os resultados
SELECT
	id,
	first_name AS primeiro_nome,
	email
FROM
	users
WHERE
	id
BETWEEN
	100
AND
	150
ORDER BY
	id
ASC
LIMIT 0, 3;
-- LIMIT 3
-- OFFSET 3;
