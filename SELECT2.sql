-- количество исполнителей в каждом жанре;

select g.title, count(performer_id) performer_q from genres g
join genresperformers gp on g.id = gp.genre_id 
group by g.title 
order by performer_q desc;

-- количество треков, вошедших в альбомы 2019-2020 годов;

select a.album_name, count(t.track_id) track_q from albums a
join tracks t on a.album_id = t.album_id
group by a.album_name, a.year_release 
having a.year_release BETWEEN 2019 AND 2020
order by track_q desc;

-- средняя продолжительность треков по каждому альбому;

SELECT a.album_name, AVG(t.duration) FROM Tracks t, albums a
where t.album_id = a.album_id 
GROUP BY t.album_id, a.album_name
ORDER BY a.album_name;

-- все исполнители, которые не выпустили альбомы в 2020 году;

select distinct p.name from performers p
where p.name not in (
	select distinct p.name from performers p
	left join performersalbums pa on p.id = pa.performer_id 
	left join albums a on a.album_id = pa.album_id 
	where a.year_release = 2020
)
order by p.name;

-- названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

select c.collection_name from Collections c
left join CollectionsTracks ct on c.collection_id = ct.collection_id
left join tracks t on t.track_id  = ct.track_id 
left join Albums a on a.album_id = t.album_id
left join PerformersAlbums pa on pa.album_id = a.album_id 
left join Performers p on p.id = pa.performer_id
where p.name like '%%Swift%%'
order by c.collection_name;

-- название альбомов, в которых присутствуют исполнители более 1 жанра;

select a.album_name from albums a
left join PerformersAlbums pa on a.album_id = pa.album_id 
left join Performers p on p.id = pa.performer_id
left join GenresPerformers gp on p.id  = gp.performer_id 
left join genres g on g.id = gp.genre_id 
group by a.album_name 
having count(distinct g.title) > 1
order by a.album_name; 

-- наименование треков, которые не входят в сборники;

select t.track_name from tracks t
left join CollectionsTracks ct on t.track_id = ct.track_id
where ct.track_id is null;

-- исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

select p.name, t.duration  from tracks t 
left join Albums a on a.album_id = t.album_id
left join PerformersAlbums pa on pa.album_id = a.album_id 
left join Performers p on p.id = pa.performer_id  
group by p.name, t.duration 
having  t.duration = (SELECT min(t.duration) FROM tracks t)
order by p.name;

-- название альбомов, содержащих наименьшее количество треков.

select distinct a.album_name
from albums a 
left join tracks t on t.album_id = a.album_id 
where t.album_id in (
select album_id from tracks 
group by album_id
having count(album_id) = (
select count(album_id) from tracks 
group by album_id 
order by count
limit 1
	)
)
order by a.album_name 
