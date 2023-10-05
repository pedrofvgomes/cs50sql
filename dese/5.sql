select * from
(
select city, count(*) as 'Number'
from schools
where type = 'Public School'
group by city
order by 2 desc, 1
) where Number <=3;