/*
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.
*/

select cast(LONG_W as numeric(36,4))
from station
where cast(lat_n as numeric(36,4)) = 
(select cast(max(lat_n) as numeric(36,4))
from station
where lat_n < 137.2345)
