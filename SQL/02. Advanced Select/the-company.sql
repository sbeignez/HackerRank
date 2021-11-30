-- https://www.hackerrank.com/challenges/the-company/problem

SELECT
    c.company_code,
    c.founder,
    (SELECT COUNT(DISTINCT lead_manager_code) FROM lead_manager WHERE company_code = c.company_code),
    (SELECT COUNT(DISTINCT senior_manager_code) FROM senior_manager WHERE company_code = c.company_code),
    (SELECT COUNT(DISTINCT manager_code) FROM manager WHERE company_code = c.company_code),
    (SELECT COUNT(DISTINCT employee_code) FROM employee WHERE company_code = c.company_code)
FROM company c
ORDER BY c.company_code
;


select
    c.company_code, 
    c.founder, 
    count(distinct e.lead_manager_code), 
    count(distinct e.senior_manager_code), 
    count(distinct e.manager_code), 
    count(distinct e.employee_code)
from company c
    inner join employee e on e.company_code = c.company_code
group by c.company_code,c.founder
order by c.company_code;