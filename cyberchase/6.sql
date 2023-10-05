select title from episodes
where season = 6
and substring(air_date, 0, 5) = '2007';