--select employee_id, first_name
--from employees
--order by employee_id
--fetch first 5 rows with ties

--select *
--from employees
--order by salary
--fetch first 5 rows with ties

--select employee_id, last_name, salary,DEPARTMENT_ID
--from employees
--where employee_id=&DEPARTMENT_ID

--select *
--from employees

--select employee_id, last_name, &column
--from employees
--where employee_id=&DEPARTMENT_ID
--order by &NUMBER

--select first_name, last_name, hire_date
--from employees
--where hire_date='&hire_date' /*21-SEP-13*/

--select *
--from employees
--where &condition /*slary>500*/

--select first_name, last_name, &&column /* se memoreaza valoarea data prima data la rulare select*/
--from employees

--undefine column

--define column2='salary'
--define value=600
--select first_name, last_name, &column2
--from employees
--where &column2>&value 

-----lesson 7--------
--select LOWER ('SQL Course') from dual
--select upper ('SQL Course') from dual
--select initcap ('SQL Course')from dual

--select employee_id, last_name, department_id
--from employees
--where lower(last_name)='higgins'

--select concat ('Hello', 'World') from dual
--select substr ('HelloWorld', 3,5) from dual
--select length ('HelloWorld') from dual
--select instr ('HelloWorld', 'l') from dual
--select lpad (salary, 6, '$') from employees
--select rpad (salary, 6, '$') from employees

--select concat (concat(last_name, '''s job category is '), job_id) "Job"
--from employees
--where substr(job_id,4)='REP'

--select job_id from employees
--where substr(job_id,4)='REP'

--select last_name, UPPER (CONCAT (SUBSTR(last_name, 1,8), '_US')) last_name_2
--from employees
--where DEPARTMENT_ID=60

--select last_name, UPPER (CONCAT (SUBSTR(last_name, -3,8), '_US')) last_name_2
--from employees
--where DEPARTMENT_ID=60

