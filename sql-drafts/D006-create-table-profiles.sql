CREATE TABLE base_de_dados.profiles (
	id INT UNSIGNED auto_increment NOT NULL,
	bio TEXT NULL,
	description TEXT NULL,
	user_id INT UNSIGNED NULL,
	CONSTRAINT profiles_pk PRIMARY KEY (id),
	CONSTRAINT profiles_FK FOREIGN KEY (id) REFERENCES base_de_dados.users(id) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
