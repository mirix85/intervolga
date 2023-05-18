CREATE TABLE IF NOT EXISTS athletes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100),
	phone VARCHAR(100) UNIQUE,
	birthday DATE NOT NULL,
	age TINYINT NOT NULL,
	passport INT UNIQUE,
	middle_place INT DEFAULT(0) NOT NULL,
	biography TEXT,
	video_presentation BLOB,
	created_at DATETIME NOT NULL
);
