INSERT
	INTO
	roles (name)
VALUES
	('POST'),
	('PUT'),
	('DELETE'),
	('GET');
	
INSERT
	INTO
	users_roles (user_id, role_id)
VALUES
	(184, 3);
	
SELECT
	user_id,
	role_id
FROM
	users_roles
WHERE
	user_id = 184
AND 
	role_id = 3;
	
SELECT
	id AS user_id,
	(
	SELECT
		id
	FROM
		roles
	ORDER BY
		RAND()
	LIMIT 1) AS role_id
FROM
	users;
	
-- INSERT mais avançando
INSERT
	INTO
	users_roles(user_id, role_id)
SELECT
	id AS user_id,
	(
	SELECT
		id
	FROM
		roles
	ORDER BY
		RAND()
	LIMIT 1) AS role_id
FROM
	users;

-- INSERT IGNORE
INSERT
	IGNORE
	INTO
	users_roles(user_id,
	role_id)
SELECT
	id AS user_id,
	(
	SELECT
		id
	FROM
		roles
	ORDER BY
		RAND()
	LIMIT 1) AS role_id
FROM
	users
ORDER BY
	RAND()
LIMIT 5;

	