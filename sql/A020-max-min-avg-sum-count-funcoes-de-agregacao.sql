SELECT
	MAX(salary) AS max_salary,
	MIN(salary) AS min_salary,
	AVG(salary) AS average_salary,
	SUM(salary) AS sum_salary,
	COUNT(salary) AS count_salary
FROM
	users;
	
SELECT
	MAX(salary) AS max_salary,
	MIN(salary) AS min_salary,
	AVG(salary) AS average_salary,
	SUM(salary) AS sum_salary,
	COUNT(salary) AS count_salary
FROM
	users
WHERE
	first_name = 'Carly';
	
SELECT
	u.first_name,
	MAX(u.salary) AS max_salary,
	MIN(u.salary) AS min_salary,
	AVG(u.salary) AS average_salary,
	SUM(u.salary) AS sum_salary,
	COUNT(u.id) AS total
FROM
	users AS u
LEFT JOIN
	profiles AS p 
ON
	p.user_id = u.id
WHERE
	u.id IN (129, 131, 208, 203)
GROUP BY 
	first_name
ORDER BY 
	total
DESC
LIMIT 5;
