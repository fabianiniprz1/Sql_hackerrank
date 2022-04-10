/*
Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.
*/

select cast(LONG_W as numeric(36,4))
from station
where cast(lat_n as numeric(36,4)) = 
(select cast(min(lat_n) as numeric(36,4))
from station
where lat_n > 38.7780)
