DROP TABLE IF EXISTS roles CASCADE;
CREATE TABLE roles(
	id BIGSERIAL PRIMARY KEY,
	name VARCHAR(180) NOT NULL UNIQUE,
	image VARCHAR(255) NULL, 
	route VARCHAR(255) NULL,
	created_at TIMESTAMP(0) NOT NULL,
	updated_at TIMESTAMP(0) NOT NULL
);

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

DROP TABLE IF EXISTS user_has_r	oles CASCADE;
CREATE TABLE user_has_roles(
	id_user BIGSERIAL NOT NULL,
	id_rol BIGSERIAL NOT NULL,
	created_at TIMESTAMP(0) NOT NULL,
	updated_at TIMESTAMP(0) NOT NULL,
	FOREIGN KEY(id_user) REFERENCES users(id) ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY(id_rol) REFERENCES roles(id) ON UPDATE CASCADE ON DELETE CASCADE,
	PRIMARY KEY(id_user, id_rol)
);

INSERT INTO roles(
	name,
	route,
	image,
	created_at,
	updated_at
)
VALUES(
 	'CLIENTE',
	'client/home',
	'https://cdn.pixabay.com/photo/2016/03/31/20/37/client-1295901_1280.png',
	'2021-10-04',
	'2021-10-04'
);


INSERT INTO roles(
	name,
	route,
	image,
	created_at,
	updated_at
)
VALUES(
 	'RESTAURANTE',
	'restaurant/home',
	'https://img.icons8.com/color/452/restaurant-.png',
	'2021-10-04',
	'2021-10-04'
);


INSERT INTO roles(
	name,
	route,
	image,
	created_at,
	updated_at
)
VALUES(
 	'REPARTIDOR',
	'delivery/home',
	'https://previews.123rf.com/images/yupiramos/yupiramos1806/yupiramos180620488/103715036-delivery-worker-in-motorcycle-avatar-character-vector-illustration-design.jpg',
	'2021-10-04',
	'2021-10-04'
);