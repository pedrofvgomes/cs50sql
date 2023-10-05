select schools.name
from schools, districts
where districts.name = 'Cambridge'
and schools.district_id = districts.id;