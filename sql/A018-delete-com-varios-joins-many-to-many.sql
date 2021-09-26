SELECT
	u.first_name,
	p.bio
FROM
	users AS u
LEFT JOIN
	profiles p
ON
	p.user_id = u.id
WHERE
	u.first_name = 'Katelyn';

DELETE
	p,
	u
FROM
	users AS u
LEFT JOIN
	profiles p
ON
	p.user_id = u.id
WHERE
	u.first_name = 'Katelyn';