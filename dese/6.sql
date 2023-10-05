select schools.name
from schools, graduation_rates
where schools.id = school_id
and graduated = 100;