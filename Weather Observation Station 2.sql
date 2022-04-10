/*
Query the following two values from the STATION table:

The sum of all values in LAT_N rounded to a scale of 2 decimal places.
The sum of all values in LONG_W rounded to a scale of 2 decimal places.
*/

select cast(round(sum(LAT_N),2) as numeric(36,2)), cast(round(sum(LONG_W),2) as numeric(36,2))
from STATION 
