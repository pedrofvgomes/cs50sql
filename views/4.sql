select count(*)
from views
where artist = 'Hiroshige'
and (english_title like '%Eastern Capital'
or english_title like 'Eastern Capital%'
or english_title like '%Eastern Capital%');