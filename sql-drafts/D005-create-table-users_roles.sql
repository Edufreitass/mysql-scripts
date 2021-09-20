CREATE TABLE base_de_dados.users_roles (
	user_id INT UNSIGNED NOT NULL,
	role_id INT UNSIGNED NOT NULL,
	CONSTRAINT users_roles_pk PRIMARY KEY (user_id,role_id),
	CONSTRAINT users_roles_FK FOREIGN KEY (user_id) REFERENCES base_de_dados.users(id) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT users_roles_FK_1 FOREIGN KEY (role_id) REFERENCES base_de_dados.roles(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
