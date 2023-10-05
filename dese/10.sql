select name, per_pupil_expenditure
from districts, expenditures
where district_id = districts.id
and districts.type = 'Public School District'
order by 2 desc
limit 10;