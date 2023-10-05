select first_name, last_name
from players
where birth_country != 'USA'
order by 1,2;