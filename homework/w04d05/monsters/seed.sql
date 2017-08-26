DROP TABLE IF EXISTS monster;

CREATE TABLE monster (

	id SERIAL PRIMARY KEY,
	title VARCHAR(255),
	description TEXT
);

INSERT INTO monster (title, description) VALUES ('Orc', 'Although not entirely dim-witted and occasionally crafty, they are portrayed as miserable beings, hating everyone including themselves and their masters, whom they serve out of fear. They make no beautiful things, but rather design cunning devices made to hurt and destroy.');
INSERT INTO monster (title, description) VALUES ('Vampire', 'A vampire is a being from folklore that subsists by feeding on the life essence (generally in the form of blood) of the living.');
INSERT INTO monster (title, description) VALUES ('Dragon', 'A dragon is a legendary creature, typically scaled or fire-spewing and with serpentine, reptilian or avian traits, that features in the myths of many cultures around world.');