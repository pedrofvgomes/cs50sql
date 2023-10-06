select year, salary
from salaries, players
where salaries.player_id = players.id
and players.first_name = 'Cal' and players.last_name = 'Ripken'
order by 1 desc;