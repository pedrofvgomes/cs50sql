select city, count(*)
from schools
where type = 'Public School'
group by city
order by 2 desc, 1
limit 10;