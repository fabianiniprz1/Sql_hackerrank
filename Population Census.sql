/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

select sum(CI.population)
from city CI inner join Country CO
                on CI.countrycode = CO.code
where CO.CONTINENT  = 'Asia'
