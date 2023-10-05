create view june_vacancies as
select listings.id, property_type, host_name, count(available) as "days_vacant"
from listings, availabilities
where listing_id = listings.id
and date between '2023-06-01' and '2023-06-30'
and available = 'TRUE'
group by 1;