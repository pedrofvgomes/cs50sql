select first_name, last_name, salary/H as 'dollars per hit'
from players, salaries, performances
where performances.year = 2001
and salaries.year = 2001
and performances.player_id = salaries.player_id
and salaries.player_id = players.id
and H != 0
order by 3 asc, 1 asc, 2 asc
limit 10;