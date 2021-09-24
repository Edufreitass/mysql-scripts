-- INSERT SELECT
-- insere valores em uma tabela usando outra
INSERT
	INTO
	profiles
	(bio,
	description,
	user_id)
SELECT
	CONCAT('bio de ', first_name),
	CONCAT('Description de ', first_name),
	id
FROM
	users;

# IMPORTANT !!!
-- https://stackoverflow.com/questions/5005388/cannot-add-or-update-a-child-row-a-foreign-key-constraint-fails
-- https://nick.zoic.org/art/mysql-foreign-key-error/

-- set foreign_key_checks=0;
-- set foreign_key_checks=1;