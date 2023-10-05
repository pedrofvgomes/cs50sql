select first_name, last_name
from players, (
select players.id as 'p', salary*1.0/H as 'dollars per hit', salary*1.0/RBI as 'dollars per rbi'
from players, salaries, performances
where performances.year = 2001
and salaries.year = 2001
and performances.player_id = salaries.player_id
and salaries.player_id = players.id
and H != 0
and RBI != 0
order by 2 asc, 3 asc) as 't'
where t.p = players.id order by t.p limit 10;