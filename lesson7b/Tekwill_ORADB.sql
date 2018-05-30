---select instr(job_id, 'REP', 1,5) rep from employees

--select * from employees
--select instr ('HelloWorld', 'l') from dual /*Rezultat - 3, pozitia lui l e 3*/

---primul e din first_name
--select instr(first_name, 'e',1,1) from employees
--select substr (lower(first_name), instr(lower(first_name), 'e',1,1),1)
--, instr(first_name, 'e',1,1)
--,first_name
--from employees

---pe ce pozitie se afla primul n care se intilneste in first_name
--select instr(first_name, 'n') pozitia_n
--,first_name
--from employees

---afisati lungimea numer de telefon
--Validam daca nr de tel are 2 puncte
--select phone_number, length(phone_number) from employees
--where length(phone_number)=12

---pag.211
--select employee_id, concat (first_name, last_name) Name,
--    length (last_name), instr(concat (first_name, last_name), 'a') "Contains 'a'?"
--from employees
--where substr(last_name, -1,1)='n'

--select last_name, substr(last_name, -1,1) from employees /*ultima litera*/
--select last_name, substr(last_name, 1,1) from employees /*prima litera*/

--select phone_number, trim (both 6 from phone_number) aa
--from employees /*din ambele parti sterge 6*/

--select phone_number, trim (leading 6 from phone_number) aa
--from employees /*din stinga  sterge 6*/
--
--select phone_number, trim (trailingg 6 from phone_number) aa
--from employees /*din dreapta sterge 6*/

--select round (45.926,2) from dual /*45.93*/
--select trunc (45.926,2) from dual /*45.92*/
--select ceil (2.83) from dual /*3*/
--select floor (2.83) from dual /*2*/
--select mod (1600,300) from dual /*100*/

--select sysdate from dual
select curent_date from dual
