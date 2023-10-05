select name
from (select name, pupils
from expenditures, districts
where district_id = districts.id)
where pupils = (select min(pupils)
from expenditures, districts
where district_id = districts.id);