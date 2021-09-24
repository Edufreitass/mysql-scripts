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