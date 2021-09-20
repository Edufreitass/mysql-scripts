ALTER TABLE base_de_dados.users ADD created_at DATETIME DEFAULT NOW() NOT NULL;
ALTER TABLE base_de_dados.users ADD updated_at DATETIME DEFAULT NOW() ON UPDATE NOW() NOT NULL;
