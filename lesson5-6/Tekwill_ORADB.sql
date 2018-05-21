/*select "salary encrease" from (
select employee_id
        ,salary*1.1 as "salary encrease"
        , salary*10 anual_salary
        , first_name
        , last_name
from employees)*/

/*select first_name|| ' '||last_name Full_name
from employees*/

/*select first_name|| ' is a ' || job_id employees_details
from employees*/

/*select department_name || q'[ Department's manager id: ]'
                        || manager_id as "Department and manager"
from departments*/

/*select department_name || q'{ Department's manager id: }'
                        || manager_id as "Department and manager"
                        , 'gmail.com'|| DEPARTMENT_NAME email
from departments*/

--describe employees
--desc employees

select sysdate from dual

