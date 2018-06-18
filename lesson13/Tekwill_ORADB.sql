select last_name, hire_date
from employees
where hire_date>(select hire_date from employees where last_name='Davies');

select last_name, job_id
from employees
where job_id = (select job_id from employees where employee_id=141);


select last_name, job_id, salary
from employees
where job_id=(select job_id from employees where last_name='Taylor')
and
      salary > (select salary from employees where last_name='Taylor');

select last_name, job_id, salary
from employees
where salary =(select min(salary) from employees);

select department_id, min(salary)
from employees
group by department_id
having min(salary)>(select min(salary) from employees where department_id=60);

--------nu merge----------
select job_id, avg(salary)
from employees
group by job_id
having avg(salary)=(select min(avg(salary)));
------------------------

select b.student_id, 
       min(no_of_working_days-no_of_days_off)
from ad_student_attendance a
join ad_student_details b
on a.student_id=b.student_id
group by b.student_id
having min(no_of_working_days-no_of_days_off)>
            (select min(no_of_working_days-no_of_days_off)
             from ad_student_attendance a
join ad_student_details b
on a.student_id=b.student_id);

select employee_id, last_name
from employees
where salary in (select min(salary)
              from employees
              group by department_id);

select last_name, job_id
from employees
where job_id = (select job_id
                from employees
                where last_name ='Haas');
                
select employee_id, last_name, job_id, salary
from employees
where salary < any (select salary from employees where job_id='IT_PROG')
and job_id<>'IT_PROG';


select employee_id, last_name, job_id, salary
from employees
where salary < all (select salary from employees where job_id='IT_PROG');
--de prisos------
--and job_id<>'IT_PROG';

select first_name, department_id, salary
from employees
where (salary, department_id) in 
       (select min(salary), department_id
        from employees
        group by department_id)
order by department_id;

select e.last_name
from employees e
where e.employee_id not in (select m.manager_id from employees m);