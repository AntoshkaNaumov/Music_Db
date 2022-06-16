-- название и год выхода альбомов, вышедших в 2018 году;
SELECT album_name, year_release FROM Albums
WHERE year_release = 2018;

-- название и продолжительность самого длительного трека;

SELECT track_name, duration FROM Tracks
WHERE duration = (SELECT MAX(duration) FROM Tracks);

-- название треков, продолжительность которых не менее 3,5 минуты;

SELECT track_name FROM Tracks
WHERE duration > 3.5 ;

-- названия сборников, вышедших в период с 2018 по 2020 год включительно;

SELECT collection_name FROM Collections
WHERE year_release BETWEEN 2018 AND 2020;

-- исполнители, чье имя состоит из 1 слова;

SELECT name FROM Performers where not name LIKE '%% %%';

-- название треков, которые содержат слово "мой"/"my".

SELECT track_name FROM Tracks
WHERE track_name ILIKE '%my%' or track_name ILIKE '%мой%';
