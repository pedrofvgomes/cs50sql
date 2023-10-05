select first_name, last_name, salary, HR, salaries.year
from players, salaries, performances
where performances.year = salaries.year
and salaries.player_id = performances.player_id
and performances.player_id = players.id;