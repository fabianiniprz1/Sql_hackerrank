/*
Julia asked her students to create some coding challenges. Write a query to print the hacker_id, name, and the total number of challenges created by each student. Sort your results by the total number of challenges in descending order. If more than one student created the same number of challenges, then sort the result by hacker_id. If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result.
*/

select distinct a.hacker_id, a.name, a.cantidad
from (select H.hacker_id, H.name, count(c.challenge_id ) as cantidad
        from Hackers H inner join Challenges C
                            on H.hacker_id = C.hacker_id
        group by H.hacker_id, H.name) as a 
        
where a.cantidad not in ( select b.cantidad from(select s.cantidad, count(*) as cuenta
             from (select H.hacker_id, H.name, count(c.challenge_id ) as cantidad
                    from Hackers H inner join Challenges C
                            on H.hacker_id = C.hacker_id
                    group by H.hacker_id, H.name) as s
                where s.cantidad != (
                    
                    select max (r.cantidad) 
                    from (select H.hacker_id, H.name, count(c.challenge_id ) as cantidad
                    from Hackers H inner join Challenges C
                            on H.hacker_id = C.hacker_id
                    group by H.hacker_id, H.name) as r
                                    
                                    
                                    )
             group by s.cantidad
             having count(*) > 1) as b )
order by a.cantidad desc, a.hacker_id asc
