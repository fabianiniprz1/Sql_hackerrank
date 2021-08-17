select case 
            when (A + B <= C) OR (A + C <= B) OR (C + B <= A) THEN 'Not A Triangle' 
            when (A = B AND B != C) OR (A != B AND B = C) OR (A != B AND A = C) THEN 'Isosceles' 
            when A = B AND B = C THEN  'Equilateral' 
            when A != B AND B != C THEN 'Scalene'             
        end
from TRIANGLES 
