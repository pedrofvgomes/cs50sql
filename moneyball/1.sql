select year, round(sum(salary)*1.0/count(salary),2) as 'average salary'
from salaries
group by 1;