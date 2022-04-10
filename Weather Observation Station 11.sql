/*
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
*/

select distinct city
from station
where   city not like 'a%a'
and     city not like 'a%e'
and     city not like 'a%i'
and     city not like 'a%o'
and     city not like 'a%u'

and     city not like 'e%a'
and     city not like 'e%e'
and     city not like 'e%i'
and     city not like 'e%o'
and     city not like 'e%u'

and     city not like 'i%a'
and     city not like 'i%e'
and     city not like 'i%i'
and     city not like 'i%o'
and     city not like 'i%u'

and     city not like 'o%a'
and     city not like 'o%e'
and     city not like 'o%i'
and     city not like 'o%o'
and     city not like 'o%u'

and     city not like 'u%a'
and     city not like 'u%e'
and     city not like 'u%i'
and     city not like 'u%o'
and     city not like 'u%u'
