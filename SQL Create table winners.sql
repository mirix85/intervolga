CREATE TABLE IF NOT EXISTS winners (
	id_competition INT,
	1_place VARCHAR(100) NOT NULL,
	2_place VARCHAR(100) NOT NULL,
	3_place VARCHAR(100) NOT NULL,
	FOREIGN KEY (id_competition) REFERENCES competitions (id)
);
