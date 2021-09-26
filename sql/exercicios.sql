-- 209 a 213

-- 1) Insira 5 usu�rios
INSERT
	INTO
	users
	(first_name,
	last_name,
	email,
	password_hash,
	salary)
VALUES
	('Joao', 'Gomes', 'joaogomes@email.com', '�ASLKDJWER8', ROUND(RAND() * 10000, 2)),
	('Dua', 'Lipa', 'dualipa@email.com', '�3K4JLJL3L43', ROUND(RAND() * 10000, 2)),
	('Post', 'Malone', 'postmalone@email.com', 'L23�K3JJ3JLJF', ROUND(RAND() * 10000, 2)),
	('Iron', 'Maiden', 'ironmaiden@email.com', 'ASF67D7S6A7A', ROUND(RAND() * 10000, 2)),
	('Dennis', 'DJ', 'dennisdj@email.com', 'ASKJDFL�LJWERP', ROUND(RAND() * 10000, 2));

-- 2) Insira 5 perfis para os usu�rios inseridos
INSERT
	INTO
	profiles
	(bio, 
	description, 
	user_id)
VALUES
	('Uma bio', 'Uma description', (SELECT id FROM users WHERE email = 'joaogomes@email.com')),
	('Uma bio', 'Uma description', (SELECT id FROM users WHERE email = 'dualipa@email.com')),
	('Uma bio', 'Uma description', (SELECT id FROM users WHERE email = 'postmalone@email.com')),
	('Uma bio', 'Uma description', (SELECT id FROM users WHERE email = 'ironmaiden@email.com')),
	('Uma bio', 'Uma description', (SELECT id FROM users WHERE email = 'dennisdj@email.com'));
	
-- 3) Insira permiss�es (roles) para os usu�rios inseridos
INSERT 
	INTO
	users_roles
	(user_id,
	role_id)
VALUES
	(
		(SELECT id FROM users WHERE email = 'joaogomes@email.com'),
		(SELECT id FROM roles WHERE name = 'PUT')
	),
	(
		(SELECT id FROM users WHERE email = 'dualipa@email.com'),
		(SELECT id FROM roles WHERE name = 'PUT')
	),
	(
		(SELECT id FROM users WHERE email = 'postmalone@email.com'),
		(SELECT id FROM roles WHERE name = 'PUT')
	),
	(
		(SELECT id FROM users WHERE email = 'ironmaiden@email.com'),
		(SELECT id FROM roles WHERE name = 'PUT')
	),
	(
		(SELECT id FROM users WHERE email = 'dennisdj@email.com'),
		(SELECT id FROM roles WHERE name = 'PUT')
	),
	(
		(SELECT id FROM users WHERE email = 'dennisdj@email.com'),
		(SELECT id FROM roles WHERE name = 'POST')
	),
	(
		(SELECT id FROM users WHERE email = 'dennisdj@email.com'),
		(SELECT id FROM roles WHERE name = 'GET')
	);
	
-- 4) Selecione os �ltimos 5 usu�rios por ordem decrescente
SELECT
	*
FROM
	users
ORDER BY
	id 
DESC 
LIMIT 5;

-- 5) Atualize o �ltimo usu�rio inserido
UPDATE
	users
SET
	first_name = 'Baroes',
	last_name = 'da Pisadinha',
	email = 'baroes@email.com'
WHERE
	id = 213;

-- 6) Remova uma permiss�o de algum usu�rio
DELETE
	FROM 
	users_roles 
WHERE 
	user_id = (SELECT id FROM users WHERE email = 'baroes@email.com')
AND 
	role_id = (SELECT id FROM roles WHERE name = 'POST');

-- 7) Remova um usu�rio que tem permiss�o "PUT"
-- SELECT
-- 	u.id AS user_id,
-- 	u.first_name,
-- 	r.name
DELETE
	u
FROM
	users u
INNER JOIN 
	users_roles ur
ON
	u.id = ur.user_id
INNER JOIN 
	roles r
ON
	ur.role_id = r.id
WHERE
	r.name = 'PUT'
AND
	u.id = 213;
	
-- 8) Selecione usu�rios com perfis e permiss�es (obrigat�rio)
SELECT
	u.id AS user_id,
	u.first_name,
	r.name,
	p.bio 
FROM
	users u
INNER JOIN 
	users_roles ur
ON
	u.id = ur.user_id
INNER JOIN 
	roles r
ON
	ur.role_id = r.id
INNER JOIN
	profiles p 
ON
	p.user_id = u.id;

-- 9) Selecione usu�rios com perfis e permiss�es (opcional)
SELECT
	u.id AS user_id,
	u.first_name,
	r.name,
	p.bio 
FROM
	users u
LEFT JOIN 
	users_roles ur
ON
	u.id = ur.user_id
LEFT JOIN 
	roles r
ON
	ur.role_id = r.id
LEFT JOIN
	profiles p 
ON
	p.user_id = u.id;

-- 10) Selecione usu�rios com perfis e permiss�es ordenando por sal�rio
SELECT
	u.id AS user_id,
	u.first_name,
	r.name,
	p.bio,
	u.salary 
FROM
	users u
LEFT JOIN 
	users_roles ur
ON
	u.id = ur.user_id
LEFT JOIN 
	roles r
ON
	ur.role_id = r.id
LEFT JOIN
	profiles p 
ON
	p.user_id = u.id
ORDER BY 
	u.salary
DESC;
