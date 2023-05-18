CREATE TABLE IF NOT EXISTS results (
	id_athlete INT NOT NULL,
	id_competition INT NOT NULL,
	result_time TIME NOT NULL,
	place INT NOT NULL,
	FOREIGN KEY (id_athlete) REFERENCES athletes (id),
	FOREIGN KEY (id_competition) REFERENCES competitions (id)
);
