CREATE TABLE users(
	id BIGSERIAL PRIMARY KEY,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255) NOT NULL,
	lastname VARCHAR(255) NOT NULL,
	phone VARCHAR(80) NOT NULL UNIQUE,
	image VARCHAR(255) NULL,
	password VARCHAR(255) NOT NULL,
	is_available BOOLEAN NULL,
	session_token VARCHAR(255) NULL,
	created_at TIMESTAMP(0) NOT NULL,
	updated_at TIMESTAMP(0) NOT NULL
);
-------------------------------------
INSERT INTO users(
	email,
	name,
	lastname,
	phone,
	password,
	created_at,
	updated_at
)
VALUES(
	'EALFRIADEZ@GMAIL.COM',
	'ELEAZAR ALFREDO',
	'ALFRIADEZ YRIARTE',
	'946768506',
	'12345',
	'2024-02-21',
	'2024-02-21'
);
