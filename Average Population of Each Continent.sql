/*
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns
*/

select co.Continent, round(avg(ci.population),0)
from city ci inner join country co
                on ci.countrycode = co.code
group by co.Continent
