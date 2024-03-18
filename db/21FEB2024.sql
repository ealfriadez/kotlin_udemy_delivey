DROP TABLE IF EXISTS roles CASCADE;
CREATE TABLE roles(
	id BIGSERIAL PRIMARY KEY,	
	name VARCHAR(180) NOT NULL 	UNIQUE,
	image VARCHAR(255) NULL,
	route VARCHAR(255) NOT NULL,	
	created_at TIMESTAMP(0) NOT NULL,
	updated_at TIMESTAMP(0) NOT NULL
);

DROP TABLE IF EXISTS users CASCADE;
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

DROP TABLE IF EXISTS user_has_roles CASCADE;
CREATE TABLE user_has_roles(
	id_user BIGSERIAL NOT NULL,
	id_rol BIGSERIAL NOT NULL,
	created_at TIMESTAMP(0) NOT NULL,
	updated_at TIMESTAMP(0) NOT NULL,
	FOREIGN KEY(id_user) REFERENCES users(id) ON UPDATE	CASCADE ON DELETE CASCADE,
	FOREIGN KEY(id_rol) REFERENCES roles(id) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY(id_user, id_rol)
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

--------------------------------------------------------------------

insert INTO roles(
	name,
	route,
	image,	
	created_at,
	updated_at
)
values(
	'CLIENTE',
	'client/home',
	'https://www.awicons.com/free-icons/download/application-icons/dragon-soft-icons-by-artua.com/png/512/User.png',
	'2024-10-04',
	'2024-10-04'
);

insert INTO roles(
	name,
	route,
	image,	
	created_at,
	updated_at
)
values(
	'RESTAURANTE',
	'restaurant/home',
	'https://www.shareicon.net/data/512x512/2016/08/18/814171_paper_512x512.png',
	'2024-10-04',
	'2024-10-04'
);

insert INTO roles(
	name,
	route,
	image,	
	created_at,
	updated_at
)
values(
	'REPARTIDOR',
	'delivery/home',
	'https://cdn.icon-icons.com/icons2/3559/PNG/512/delivery_courier_man_people_avatar_shipping_icon_225164.png',
	'2024-10-04',
	'2024-10-04'
);

