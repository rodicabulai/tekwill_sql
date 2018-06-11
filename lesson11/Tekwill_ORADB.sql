---------------corect---------------
select employee_id, last_name, first_name, department_id,job_title, street_address, city
from employees join departments using (department_id)
join jobs using (job_id)
join locations using (location_id); 

--------------gresit--------------
select employee_id, last_name, first_name, department_id,job_title, street_address, city
from employees join departments using (department_id)
join jobs using (job_id)
join locations using (location_id) 
join job_history using (employees.job_id);

--------------corect----------------
select e. employee_id, 
       department_id,
       d.department_name
from employees e join departments d using (department_id);


--------------gresit----------------
select e. employee_id, 
       d. department_id,
       d.department_name
from employees e join departments d using (department_id);

select e. employee_id, e.department_id, d.department_id,
       d.department_name
from employees e join departments d 
on e.department_id = d.department_id;

select e. employee_id, 
       d.department_name
from employees e join 
(select department_id department, department_name from departments) d 
on e.department_id = d.department;

select * from employees;

select e.employee_id, e.last_name, e.first_name, d.department_name,
j.job_title, l.street_address, l.city, jh.*
from employees e
join departments d
on e.department_id=d.department_id
join jobs j on e.job_id=j.job_id
join locations l on d.location_id=l.location_id
join job_history  jh on e.employee_id=jh.employee_id 
--where sysdate between start_date and end_date
--order by;

---------------------selecturi identice-------------
select e.employee_id, e.last_name, e.department_id, 
       e.manager_id, d.department_id, d.location_id
from employees e join departments d
on (e.department_id=d.department_id)
and e.manager_id=149;

select e.employee_id, e.last_name, e.department_id, 
       e.manager_id, d.department_id, d.location_id
from employees e join departments d
on (e.department_id=d.department_id)
where e.manager_id=149;
------------------------------------------

select worker.last_name emp, manager.last_name mgr
from employees worker join employees manager
on worker.manager_id=manager.employee_id;

select e.last_name, e.salary, j.grade_level
from employees e join job_grades j
on e.salary between j.lowest_sal and j.highest_sal;

select * from job_grades;

select e.last_name, e.department_id, 
       d.department_name
from employees e left outer join departments d
on (e.department_id=d.department_id);

select e.last_name, e.department_id, 
       d.department_name
from employees e right outer join departments d
on (e.department_id=d.department_id);

select e.last_name, e.department_id, 
       d.department_name
from employees e full outer join departments d
on (e.department_id=d.department_id);
------------------selecturi identice----------
select last_name, department_name 
from employees cross join departments;

select last_name, department_name 
from employees, departments;
------------------------

select last_name, department_name 
from employees e, departments d where e.department_id=d.department_id;


