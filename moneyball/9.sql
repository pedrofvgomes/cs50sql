select teams.name, round(sum(salary)*1.0/count(salary),2) as 'average salary'
from teams, salaries
where teams.id = team_id
and salaries.year = 2001
group by 1
order by 2 asc
limit 5;