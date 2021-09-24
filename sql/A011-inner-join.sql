SELECT
	u.id AS users_id,
	p.id AS profiles_id,
	p.bio,
	u.first_name
FROM
	users AS u,
	profiles AS p
WHERE
	u.id = p.user_id;

SELECT
	u.id AS users_id,
	p.id AS profiles_id,
	p.bio,
	u.first_name
FROM
	users AS u
INNER JOIN
	profiles p
ON
	u.id = p.user_id
WHERE
	u.first_name
LIKE
	'%a'
ORDER BY
	u.first_name
DESC
LIMIT 5;