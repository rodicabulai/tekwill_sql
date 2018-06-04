--------------lesoon 7
--select employee_id, hire_date, 
--months_between(sysdate, hire_date) tenure, 
--add_months (hire_date, 6) review,
--next_day (hire_date, 'FRIDAY'),
--last_day (hire_date)
--FROM employees where months_between (sysdate, hire_date)<150


--select employee_id, hire_date, round(hire_date, 'MONTH'),
--trunc(hire_date, 'MONTH')
--from employees
--where hire_date LIKE '%14'

--------------lesoon 8

--select employee_id, hire_date, to_char(hire_date, 'MM/YY') Month_Hired
--from employees
--where last_name='Higgins'


--select employee_id, hire_date, to_char(hire_date, 'YYYY') Month_Hired
--from employees


--select employee_id, hire_date, to_char(hire_date, 'YEAR') Month_Hired
--from employees

--select employee_id, hire_date, to_char(hire_date, 'MONTH') Month_Hired
--from employees

--select employee_id, hire_date, to_char(hire_date, 'MON') Month_Hired
--from employees

--select employee_id, hire_date, to_char(hire_date, 'DY') Month_Hired
--from employees

--select employee_id, hire_date, to_char(hire_date, 'DAY') Month_Hired
--from employees

--select employee_id, hire_date, to_char(hire_date, 'DD') Month_Hired
--from employees

--select to_char (sysdate,'DD-MON-YYYY') from dual
--select to_char (sysdate,'DD.Mm.YY') from dual

--select to_char (sysdate,'Q') from dual

--select to_char (sysdate,'BC') from dual

--select last_name, to_char(hire_date, 'fmDD Month YYYY') hiredate, 
--                  to_char(hire_date, 'DD Month YYYY') hiredate2
--from employees

--select last_name,hire_date, to_char(hire_date, 'fmDDspth "of" Month YYYY fmHH:MI:SS AM') hiredate
--from employees

--select salary, to_char(salary, '$99,999.00') salary
--from employees

--select last_name, hire_date
--from employees
--where hire_date=to_date('May 24, 2015', 'fxMonth DD, YYYY')

--select to_char(123123, 'fm999,999.00') from  dual
--select to_char(123123, '999,999.99') from  dual

--select to_char(123123, 'fm999,999.00U') from  dual

--select last_name, to_char(hire_date, 'DD-Mon-YYYY')
--from employees
--where to_date(hire_date, 'DD-Mon-yy') < '01-Jan-90'