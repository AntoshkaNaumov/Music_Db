INSERT INTO Performers
	VALUES(1, 'Taylor Swift');

INSERT INTO Performers
	VALUES(2, 'Shania Twain');

INSERT INTO Performers
	VALUES(3, 'Lady Gaga');

INSERT INTO Performers
	VALUES(4, 'Madonna');

INSERT INTO Performers
	VALUES(5, 'Katy Perry');

INSERT INTO Performers
	VALUES(6, 'Rihanna');

INSERT INTO Performers
	VALUES(7, 'Eminem');

INSERT INTO Performers
	VALUES(8, 'Kanye West');

INSERT INTO Performers
	VALUES(9, 'Linkin Park');

INSERT INTO Performers
	VALUES(10, 'U2');
	
INSERT INTO Genres
	VALUES(1, 'country');

INSERT INTO Genres
	VALUES(2, 'dance');

INSERT INTO Genres
	VALUES(3, 'pop');

INSERT INTO Genres
	VALUES(4, 'rap');

INSERT INTO Genres
	VALUES(5, 'rock');

INSERT INTO Albums
	VALUES(1, 'Evermore', 2020);

INSERT INTO Albums
	VALUES(2, 'Now', 2017);

INSERT INTO Albums
	VALUES(3, 'Chromatica', 2020);

INSERT INTO Albums
	VALUES(4, 'Madame X', 2019);

INSERT INTO Albums
	VALUES(5, 'Smile', 2020);
	
INSERT INTO Albums
	VALUES(6, 'Anti', 2016);

INSERT INTO Albums
	VALUES(7, 'Kamikaze', 2018);

INSERT INTO Albums
	VALUES(8, 'One More Light', 2017);

INSERT INTO Albums
	VALUES(9, 'Rebel Heart', 2018);

INSERT into Tracks(album_id, track_name, duration) values(1, 'Willow', 3.6);

INSERT into Tracks(album_id, track_name, duration) values(1, 'No Body, No Crime', 3.7);

INSERT into Tracks(album_id, track_name, duration) values(2, 'Swingin with My Eyes Closed', 3.4);

INSERT into Tracks(album_id, track_name, duration) values(2, 'Home Now', 3.3);

INSERT into Tracks(album_id, track_name, duration) values(3, 'Alice', 3.8);

INSERT into Tracks(album_id, track_name, duration) values(3, 'Stupid Love', 3.1);

INSERT into Tracks(album_id, track_name, duration) values(4, 'Medell?n', 4.58);

INSERT into Tracks(album_id, track_name, duration) values(4, 'Future', 3.53);

INSERT into Tracks(album_id, track_name, duration) values(5,'Never Really Over', 3.43);

INSERT into Tracks(album_id, track_name, duration) values(5,'Cry About It Late', 3.09);

INSERT into Tracks(album_id, track_name, duration) values(6, 'James Joint', 1.12);

INSERT into Tracks(album_id, track_name, duration) values(6, 'Kiss It Better', 4.13);

INSERT into Tracks(album_id, track_name, duration) values(7, 'The Ringer', 5.37);

INSERT into Tracks(album_id, track_name, duration) values(7, 'Lucky You', 4.04);

INSERT into Tracks(album_id, track_name, duration) values(8, 'Good Goodbye', 3.31);

INSERT into Tracks(album_id, track_name, duration) values(9, 'Justify My Love', 4.58);

INSERT into Tracks(album_id, track_name, duration) values(8, 'my own monster', 5.25);

INSERT into Collections(collection_name, year_release) values('collection 2020', 2020);

INSERT into Collections(collection_name, year_release) values('collection 2018', 2018);

INSERT into Collections(collection_name, year_release) values('collection 2017', 2017);

INSERT into Collections(collection_name, year_release) values('collection 2019', 2019);

INSERT into Collections(collection_name, year_release) values('collection 2016', 2016);

INSERT into Collections(collection_name, year_release) values('collection 2015', 2015);

INSERT into Collections(collection_name, year_release) values('collection 2014', 2014);

INSERT into Collections(collection_name, year_release) values('collection 2013', 2013);

INSERT into GenresPerformers(genre_id, performer_id) values(1, 1);

INSERT into GenresPerformers(genre_id, performer_id) values(2, 4);

INSERT into GenresPerformers(genre_id, performer_id) values(3, 5);

INSERT into GenresPerformers(genre_id, performer_id) values(4, 1);

INSERT into GenresPerformers(genre_id, performer_id) values(5, 8);

INSERT into GenresPerformers(genre_id, performer_id) values(5, 7);

INSERT into PerformersAlbums(performer_id, album_id) values(1, 1);

INSERT into PerformersAlbums(performer_id, album_id) values(2, 2);

INSERT into PerformersAlbums(performer_id, album_id) values(3, 3);

INSERT into PerformersAlbums(performer_id, album_id) values(4, 4);

INSERT into PerformersAlbums(performer_id, album_id) values(5, 5);

INSERT into PerformersAlbums(performer_id, album_id) values(6, 6);

INSERT into PerformersAlbums(performer_id, album_id) values(7, 7);

INSERT into PerformersAlbums(performer_id, album_id) values(8, 8);

INSERT into CollectionsTracks(collection_id, track_id) values (1, 7);

INSERT into CollectionsTracks(collection_id, track_id) values (2, 6);

INSERT into CollectionsTracks(collection_id, track_id) values (3, 5);

INSERT into CollectionsTracks(collection_id, track_id) values (4, 8);

INSERT into CollectionsTracks(collection_id, track_id) values (5, 2);

INSERT into CollectionsTracks(collection_id, track_id) values (6, 3);

INSERT into CollectionsTracks(collection_id, track_id) values (7, 4);

INSERT into CollectionsTracks(collection_id, track_id) values (8, 1);