ALTER TABLE base_de_dados.users_roles ADD created_at DATETIME DEFAULT NOW() NOT NULL;
ALTER TABLE base_de_dados.users_roles ADD updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() NOT NULL;
