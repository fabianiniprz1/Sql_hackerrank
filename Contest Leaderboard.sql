/*
You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. Exclude all hackers with a total score of 0 from your result.
*/

select H.hacker_id , H.name, sum(S.score) score
from Hackers H inner join (select hacker_id , challenge_id, max(score) as score
                           from Submissions
                            group by hacker_id , challenge_id) S
                        on H.hacker_id  = S.hacker_id
group by H.hacker_id , H.name
having sum(S.score) > 0
order by sum(S.score) desc, H.hacker_id asc 
