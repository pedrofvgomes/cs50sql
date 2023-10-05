select distinct teams.name
from teams, performances, players
where teams.id = team_id
and player_id = players.id
and players.first_name = 'Satchel' and players.last_name = 'Paige';