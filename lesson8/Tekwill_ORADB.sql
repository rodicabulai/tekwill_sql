--select last_name, hire_date, 
--      to_date('May 24, 2015', 'Month DD, YYYY') date1,
--      to_date('May 24, 2015', 'fxMonth DD, YYYY') date2
--from employees
--where hire_date =to_date('May 24, 2015', 'fxMonth DD, YYYY')


--select sysdate from dual
--select to_char(sysdate, 'DD.MM.YY') from dual

--select  to_date('01-Jan-10', 'DD-Mon-RR') date1
--from dual

--select last_name, hire_date
--from employees
--where hire_date<to_date(to_char(sysdate, 'DD.MM.YYYY'), 'DD.MM.YYYY')

--select last_name, hire_date, to_char(hire_date, 'DD-Month-YY')
--from employees

--select * from employees

--------------------------
--select last_name, salary, commission_pct,
--(salary*12)+(salary*12*commission_pct) AN_SAL
--from employees

--select last_name, salary, NVL(commission_pct,0),
--(salary*12)+(salary*12*NVL(commission_pct,0)) AN_SAL
--from employees
--------------------------

--select last_name, salary, commission_pct,
--NVL2(commission_pct, 'SAL+COMM', 'SAL') income
--from employees


--select first_name, length(first_name) "expr1",
--       last_name, length(last_name) "expr2",
--       nullif(length(first_name), length(last_name))result
--from employees

--select nullif(employee_id, employee_id),
--       nullif(11,10),
--       coalesce(null, null, 10, 12, null),
--       coalesce(null, 1, 10, null, null),
--       coalesce(commission_pct, manager_id, department_id),
--       commission_pct, manager_id, department_id
--from employees


--select last_name, salary, commission_pct,
--       coalesce (salary+(commission_pct*salary), salary+2000) "New Salary"
--from employees

--select last_name, job_id, salary,
--     case job_id when 'IT_PROG' then 1.10*salary
--                 when 'ST_CLERK' then 1.15*salary
--                 when 'SA_REP' then 1.20*salary
--     else  salary end revised_salary
--from employees


--select last_name, salary,
--   case when salary<5000 then 'Low'
--        when salary<10000 then 'Medium'
--        when salary<20000 then 'Good'
--        else  'Excellent'
--    end qualified_salary
--from employees



--select case job_id 
--                 when 'IT_PROG' then 1.10*salary
--                 when 'ST_CLERK' then 1.15*salary
--                 when 'SA_REP' then 1.20*salary
--     else  salary end revised_salary,
--     case when salary<5000 then 'Low'
--        when salary<10000 then 'Medium'
--        when salary<20000 then 'Good'
--     else  'Excellent'
--     end qualified_salary 
--from employees


--select last_name, job_id, salary,
--       decode (job_id, 'IT_PROG', 1.10*salary,
--                       'ST_CLERK', 1.15*salary,
--                       'SA_REP',  1.20*salary,
--     salary) revised_salary
--from employees


--select last_name, salary,
--     decode (trunc (salary/2000,0),
--                       0, 0.00,
--                       1, 0.09,
--                       2, 0.20,
--                       3, 0.30,
--                       4, 0.40,
--                       5, 0.42,
--                       6, 0.44,
--                          0,45) tax_rate
--from employees
--where department_id = 80

