-- Configura um sal�rio aleat�rio para users
-- SELECT ROUND(RAND() * 10000, 2);
UPDATE users SET salary = ROUND(RAND() * 10000, 2);

SELECT
	salary
FROM
	users
WHERE
	salary 
BETWEEN 
	1000 
AND 
	1500
ORDER BY 
	salary 
ASC;