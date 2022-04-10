/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
*/

select CI.name
from city CI inner join Country CO
                on CI.countrycode = CO.code
where CO.CONTINENT  = 'Africa'
