
/*
Consider  P1(a,c) and P2(b,d)  to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in Station
*/


select cast(sqrt(power(min(LONG_W) -max(LONG_W) ,2 ) + power(  min(LAT_N) -max(LAT_N) ,2)) as numeric(36,4))
from station
