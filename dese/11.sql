select schools.name, per_pupil_expenditure, graduated
from schools, expenditures, graduation_rates
where expenditures.district_id = schools.district_id
and schools.id = school_id
order by 2 desc, 1 asc;