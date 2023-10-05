select salary
from salaries, performances
where performances.player_id = salaries.player_id
and HR = (select max(HR) from performances where year = 2001)
and salaries.year = 2001;