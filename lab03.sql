INSERT INTO Subject (subId, subName, credit, status)
VALUES 
(1, 'Math', 4, 'Active'),
(2, 'Physics', 5, 'Active'),
(3, 'Chemistry', 3, 'Inactive'),
(4, 'Computer Science', 5, 'Active');

INSERT INTO Student (studentId, studentName, address, phone, status, class_id)
VALUES 
(1, 'Alice', '123 Main St', '123456789', 'Active', 1),
(2, 'Bob', '456 Elm St', '987654321', 'Active', 1),
(3, 'Charlie', '789 Oak St', '456123789', 'Inactive', 2);

INSERT INTO Mark (markId, sub_id, student_id, mark, examTime)
VALUES 
(1, 1, 1, 85, '2023-01-01'),
(2, 2, 1, 90, '2023-02-15'),
(3, 1, 2, 88, '2023-01-01'),
(4, 3, 2, 92, '2023-02-15'),
(5, 4, 3, 70, '2023-03-10');

SELECT * FROM Subject WHERE credit (SELECT MAX(credit) from Subject);
select sb. *
from Subject
join mark m on sb.subId = m.sub_id
where m.mark = (SELECT MAX(mark) from MARK);

select s.*, AVG(m.mark) as dtb
from Students
join Mark m on s.studentId = m.student_id
Group by s.student_id, s.studentName
order by dtb desc;
