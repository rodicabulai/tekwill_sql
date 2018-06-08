select avg(salary), max(salary), min(salary), sum(salary)
from employees
where job_id like '%REP%';

select * from employees;
select count (all commission_pct) from employees;
select count (distinct commission_pct) from employees;

select min(hire_date), max(hire_date) from employees;

select min(last_name), max(last_name) from employees;

select count(*) from employees where DEPARTMENT_ID=50;
select count (commission_pct) from employees where DEPARTMENT_ID=50;

select count (commission_pct), count(*), count(nvl(commission_pct,1)) from employees;

select count(distinct department_id) from employees;

select avg(commission_pct)from employees;

select avg(nvl(commission_pct,0)) from employees;


select department_id, avg(salary) sal_med from employees group by department_id;

select department_id, job_id, sum(salary) from employees group by department_id, job_id;

select department_id, count(last_name) from employees group by DEPARTMENT_ID;

select department_id, avg(salary) sal_med from employees group by department_id order by avg(salary);
select department_id, avg(salary) sal_med from employees group by department_id order by sal_med;

select department_id, max(salary) from employees group by department_id; 
select department_id, max(salary) from employees group by department_id having max(salary)>10000;

select job_id, sum(salary) payroll from employees
where job_id not like '%REP%' group by job_id having sum(salary)>13000
order by sum(salary);

select round(max(avg(salary)),2) from employees group by department_id;



