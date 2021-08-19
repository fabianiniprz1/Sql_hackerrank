select name +'('+substring(occupation,1,1)+')'
from occupations
order by name,occupation

select 'There are a total of ' + cast(count(1) as varchar) + ' ' + lower(occupation)+'s.'
from occupations
group by occupation
order by count(1),occupation
