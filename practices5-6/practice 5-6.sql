--select student_id, first_name, student_reg_year as admission
--from ad_student_details

--select *
--from ad_student_details

--select student_id, first_name, student_reg_year+2 "COURSE EXPIRY"
--from ad_student_details

--select student_id, first_name, Admission, Admission+2 "COURSE EXPIRY"
--from (select student_id, first_name, student_reg_year as admission
--      from ad_student_details)

--describe ad_course_details
--select * from ad_course_details

--describe ad_student_details
--select * from ad_student_details

--select student_id, 
--       first_name, 
--       parent_id, 
--       student_reg_year registration
--from  ad_student_details

--describe ad_exam_details
--select * from AD_EXAM_DETAILS

--select DISTINCT name from AD_EXAM_DETAILS

--describe ad_course_details

--select course_id ||', '||course_name "Course ID and Title"
--from ad_course_details
--describe ad_exam_details

--select exam_id ||','||exam_type||','||start_date||','||name  "The_output"
--from ad_exam_details

--describe ad_student_attendance

--select student_id, no_of_days_off 
--from AD_STUDENT_ATTENDANCE
--where no_of_days_off>15

--select course_name, department_id
--from ad_course_details
--where COURSE_ID=199

--select student_id, marks
--from ad_exam_results
--where marks<65 or marks>90

--select first_name from ad_student_details

--select student_id, first_name, student_reg_year
--from ad_student_details
--where FIRST_NAME='ROBERT' or FIRST_NAME='NINA'

--select course_name, department_id
--from ad_course_details
--where department_id=20 or DEPARTMENT_ID=40
--order by course_name

--select student_id, marks
--from ad_exam_results
--where marks between 65 and 90
--      and course_id=199 or course_id=189

--select student_reg_year from AD_STUDENT_DETAILS


--select first_name, student_reg_year 
--from ad_student_details
--where student_reg_year like '%14'

--select first_name, student_reg_year 
--from ad_student_details
--where student_reg_year>='01-JAN-14' and student_reg_year<='31-DEC-14'

--select first_name, parent_id 
--from ad_student_details
--where email_addr is null

--select first_name, student_reg_year, email_addr 
--from ad_student_details
--where email_addr is not null
--order by student_reg_year desc, email_addr 

--12----
--select first_name
--from ad_student_details
--where first_name like '_O%'

--select first_name
--from ad_student_details
--where first_name like '%A%' and first_name like '%N%' 

-----!!!!!!nu e corect--------------
--select course_id, course_name, department_id, session_id
--from ad_course_details
--where (department_id=10 or department_id=40)
--and (session_id<>200 or  session_id<>300)

------------corect--------------
--select course_id, course_name, department_id, session_id
--from ad_course_details
--where (department_id=10 or department_id=40)and session_id<>200
--and (department_id=10 or department_id=40)and  session_id<>300

----------identic cu cea de sus---------
--select course_id, course_name, department_id, session_id
--from ad_course_details
--where (department_id=10 or department_id=40)
--and session_id not in (200, 300)
