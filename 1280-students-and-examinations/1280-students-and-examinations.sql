select st.student_id, st.student_name, sb.subject_name,
count(ex.student_id) as attended_exams
from students st
cross join subjects sb
left join examinations ex
on st.student_id = ex.student_id
and sb.subject_name = ex.subject_name
group by st.student_id, st.student_name, sb.subject_name
order by st.student_id, sb.subject_name;