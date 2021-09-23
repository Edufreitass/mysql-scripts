-- ORDER BY ordena valores de forma crescente(ASC) ou decrescente(DESC)
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
DESC;