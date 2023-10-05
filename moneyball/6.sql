select teams.name, sum(H) as 'total hits'
from teams, performances
where teams.id = team_id
and performances.year = 2001
group by 1 order by 2 desc limit 5;