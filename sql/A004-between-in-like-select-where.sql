-- BETWEEN seleciona um range
SELECT
	*
FROM
	users
WHERE
	created_at 
BETWEEN 
	'2020-06-12 00:00:00' 
AND 
	'2020-09-04 23:59:59'
AND
	id
BETWEEN
	55
AND 
	102;
	
-- IN seleciona elementos entre os valores enviados
SELECT
	*
FROM
	users
WHERE
	id
IN
	(100, 105, 107);
	
-- LIKE(parecido) filtra valores que contem determinado valor
-- variações: %a / a% / he%a / %mo% / %a%b% / j_acob
-- % qualquer coisa
--  _ um caractere
SELECT
	*
FROM
	users
WHERE
	first_name
LIKE
	'%ma%_';