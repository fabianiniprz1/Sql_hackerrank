/*
Given the table schemas below, write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees. Order your output by ascending company_code.
*/

select c.company_code, c.founder,count(distinct L.lead_manager_code),count(distinct L.senior_manager_code),count(distinct L.manager_code), count(distinct L.employee_code)

from Company c inner join Employee L
                    on c.company_code = L.company_code
group by c.company_code, c.founder
order by c.company_code
