SELECT
	u.id AS users_id,
	p.id AS profiles_id,
	p.bio,
	u.first_name
FROM
	users AS u
RIGHT JOIN
	profiles p
ON
	u.id = p.user_id;