/*
A median is defined as a number separating the higher half of a data set from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.
*/

select cast(round((select  distinct PERCENTILE_CONT(0.5) 
          WITHIN GROUP(ORDER BY LAT_N) OVER()
from station),4) as NUMERIC(36,4))
