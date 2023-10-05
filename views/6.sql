select round(sum(entropy) / count(entropy),2) as 'Hiroshige Average Entropy'
from views
where artist = 'Hiroshige';