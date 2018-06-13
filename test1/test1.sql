-----test-----------
select * from ad_student_details;

--1--
select first_name,  
       trunc(months_between(sysdate, student_reg_year), 0) MONTHS_COMPLETED
from ad_student_details
order by months_completed;

--2
select first_name,  
       trunc((sysdate-student_reg_year)/7, 0) as WEEKS_COMPLETED
from ad_student_details
where email_addr is null
order by weeks_completed desc;

--3--
select first_name, student_reg_year, 
       to_char(next_day (add_months (student_reg_year,6), 'Monday'),'"Monday, the " fmDdspth "of" Month"," YYYY') review
from ad_student_details;

--4--
select student_id, marks,to_char(marks, '$99') prize_amount
from ad_exam_results
where marks>90;

--5--
select * from ad_exam_type;

select exam_type,
   case when exam_type in ('MCE', 'TF', 'FIB') then 'OBJECTIVE'
        when exam_type in ('ESS', 'SA') then 'SUBJECTIVE'
        when exam_type in ('PS') then 'ANALYTICAL'
        when exam_type in ('LAB') then 'PRACTICAL'
        else  'NOT PERMITTED'
    end nature_of_exam
from ad_exam_type;

--6--
select exam_type,
   decode (exam_type, 'MCE', 'OBJECTIVE',
                      'TF',  'OBJECTIVE',
                      'FIB', 'OBJECTIVE',
                      'ESS', 'SUBJECTIVE',
                      'SA',  'SUBJECTIVE',
                      'PS',  'ANALYTICAL',
                      'LAB', 'PRACTICAL',
                             'NOT PERMITTED') nature_of_exam
from ad_exam_type;

--7--
select course_id, count(student_id) nr_students
from ad_student_course_details
group by course_id
order by course_id;

--8--
select * from ad_faculty_details;
select  max(salary)- min(salary) difference
from ad_faculty_details;

--9--
select course_id, avg(marks) avg_marks
from ad_exam_results
group by course_id
having avg(marks)>85;

--10--
select department_name, course_name
from ad_department join ad_course_details
using (department_id);