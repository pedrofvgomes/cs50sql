create view frequently_reviewed as
select listings.id, listings.property_type, listings.host_name, count(comments)
from listings, reviews
where listing_id = listings.id
group by listing_id
order by 4 desc, 2 asc, 3 asc
limit 100;