select * from student where studentName like '%h';

select * from class where month(startDate) = 12;

select * from subject where credit BETWEEN  3 and 5;

update student 
set class_id = 2
where studntName = 'hung';

select s.studentName, sb.subname, m.mark

select student
join Mark m On s.studentId = m.student_id
join subject sb On m.sub_id = sb.sub_id
order by m.mark desc , s.studentName asc