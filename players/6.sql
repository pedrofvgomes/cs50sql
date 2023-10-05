select first_name, last_name, debut
from players
where birth_city = 'Pittsburgh' and birth_state = 'PA'
order by 3 desc, 1 asc, 2 asc;