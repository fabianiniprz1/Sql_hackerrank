/*
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.
Note: Print NULL when there are no more names corresponding to an occupation.
Input Format
The OCCUPATIONS table is described as follows:

Explanation
The first column is an alphabetically ordered list of Doctor names. 
The second column is an alphabetically ordered list of Professor names. 
The third column is an alphabetically ordered list of Singer names. 
The fourth column is an alphabetically ordered list of Actor names. 
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values.

*/



select Doctor.name,Professor.name,Singer.name,Actor.name

from 

(select     o.name,
        o.occupation,
        row_number () over (partition by o.occupation order by o.name) fila
from occupations o
where o.occupation = 'Doctor') Doctor 

full join

(select     o.name,
        o.occupation,
        row_number () over (partition by o.occupation order by o.name) fila
from occupations o
where o.occupation = 'Professor') Professor
on Doctor.fila = Professor.fila

full join

(select     o.name,
        o.occupation,
        row_number () over (partition by o.occupation order by o.name) fila
from occupations o
where o.occupation = 'Singer') Singer
on Professor.fila = Singer.fila


full join

(select     o.name,
        o.occupation,
        row_number () over (partition by o.occupation order by o.name) fila
from occupations o
where o.occupation = 'Actor') Actor
on Professor.fila = Actor.fila
