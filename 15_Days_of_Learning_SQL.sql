/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/

WITH Submissions_CTE (Submissions_date, hacker_id, cantidad)  
AS  
-- Define the CTE query.  
(  
    select s.Submissions_date, s.hacker_id, count(Submissions_id) cantidad
    from Submissions s
    group by s.Submissions_date, s.hacker_id
) 


select s.Submissions_date, s.cantidad, h.hacker_id, h.name
from Submissions s inner join hackers h
                        on s.hacker_id = h.hacker_id
                        
select s.Submissions_date, max(s.cantidad) 
from Submissions_CTE s
group by s.Submissions_date
