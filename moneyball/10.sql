select first_name, last_name, salary, salaries.year, HR
from players, salaries, performances
where performances.year = salaries.year
and salaries.player_id = performances.player_id
and performances.player_id = players.id
order by players.id asc, salaries.year desc, HR desc, salary desc;