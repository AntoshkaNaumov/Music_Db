CREATE TABLE IF NOT EXISTS Performers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS GenresPerformers (
	genre_id INTEGER REFERENCES Genres(id),
	performer_id INTEGER REFERENCES Performers(id),
	CONSTRAINT pk PRIMARY KEY (genre_id, performer_id)
);

CREATE TABLE IF NOT EXISTS Albums (
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(80) NOT NULL,
	year_release INTEGER
);

CREATE TABLE IF NOT EXISTS PerformersAlbums (
	performer_id INTEGER REFERENCES Performers(id),
	album_id INTEGER REFERENCES Albums(album_id),
	CONSTRAINT pk_2 PRIMARY KEY (performer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Tracks (
	track_id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Albums(album_id),
	track_name VARCHAR(100) NOT NULL,
	duration NUMERIC
);

CREATE TABLE IF NOT EXISTS Collections (
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(100) NOT NULL,
	year_release INTEGER		
);

CREATE TABLE IF NOT EXISTS CollectionsTracks (
	collection_id INTEGER REFERENCES Collections(collection_id),
	track_id INTEGER REFERENCES Tracks(track_id),
	CONSTRAINT pk_3 PRIMARY KEY (collection_id, track_id)
);
