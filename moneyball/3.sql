select year, HR
from performances, players
where player_id = players.id
and players.first_name = 'Ken'
and players.last_name = 'Griffey'
and players.birth_year = 1969
order by 1 desc;