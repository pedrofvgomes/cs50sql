select districts.name, per_pupil_expenditure, exemplary
from districts, expenditures, staff_evaluations
where expenditures.district_id = districts.id
and staff_evaluations.district_id = districts.id
and districts.type = 'Public School District'
and exemplary > (select sum(exemplary) / count(exemplary) from staff_evaluations)
and per_pupil_expenditure > (select sum(per_pupil_expenditure) / count(per_pupil_expenditure) from expenditures)
order by 3 desc, 2 desc, 1 asc;