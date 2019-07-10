CREATE TABLE users (
	user_id varchar(50) NOT NULL primary key,
	username varchar(100) NOT NULL,
	password varchar(100) NOT NULL,
	email varchar(100) NOT NULL,
	created_on timestamp NOT NULL,
	last_login timestamp NOT NULL
)
WITH (
	OIDS=FALSE
) ;