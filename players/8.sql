select round(sum(height)*1.0 / count(height),2) as 'Average Height', round(sum(weight)*1.0 / count(weight), 2) as 'Average Weight'
from players
where debut >= '2000-01-01';