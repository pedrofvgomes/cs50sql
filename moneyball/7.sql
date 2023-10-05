select first_name, last_name
from players, salaries
where player_id = players.id
and salary = (select max(salary) from salaries);