select first_name, last_name, salary
from players, salaries
where player_id = players.id
and year = 2001
order by 3 asc, 1 asc, 2 asc, players.id asc
limit 50;