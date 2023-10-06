select first_name, last_name
from players
where id in
(
select id from (
select players.id, salary*1.0/H as 'dollars per hit'
from players, salaries, performances
where performances.year = 2001
and salaries.year = 2001
and performances.player_id = salaries.player_id
and salaries.player_id = players.id
and H != 0
order by 2 asc, 1 asc
limit 10))

and id in
(
select id from (
select players.id, salary*1.0/RBI as 'dollars per rbi'
from players, salaries, performances
where performances.year = 2001
and salaries.year = 2001
and performances.player_id = salaries.player_id
and salaries.player_id = players.id
and RBI != 0
order by 2 asc, 1 asc
limit 10));