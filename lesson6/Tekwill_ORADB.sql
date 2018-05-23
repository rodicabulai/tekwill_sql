/*select last_name from employees
where last_name between 'King' and 'Whalen'*/

/*select employee_id, last_name, salary, manager_id
from employees
where manager_id IN (100,101, 201)*/

/*select employee_id, manager_id, department_id
from employees
where last_name IN ('Hartstein','Vargas')*/

/*select *
from employees
where hire_date IN ('07-FEB-15', '29-jan-13')*/

/*select employee_id, last_name, hire_date
from employees
where hire_date LIKE '%15'*/

--select last_name, job_id, commission_pct
--from employees
--where commission_pct IS NULL


--select first_name|| ' '||last_name full_name, 
--    job_id,    
--    phone_number
--from employees
--where phone_number LIKE '6%'


---Test % and _ haw is working
select col
from (
select 'Ion%' as col
from dual
union
select 'Ana_' as col
from dual
) where col like '%/_%'escape '/'