select count(*)
from views
where artist = 'Hokusai'
and (english_title like '%Fuji%'
or english_title like 'Fuji%');