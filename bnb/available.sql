create view available as
select listings.id, listings.property_type, listings.host_name, availabilities.date
from listings, availabilities
where listing_id = listings.id
and available = "TRUE";