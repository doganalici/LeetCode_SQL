SELECT ST.student_id, ST.student_name, SJ.subject_name, COUNT(EX.subject_name) AS attended_exams
FROM Students ST
CROSS JOIN Subjects SJ
LEFT JOIN Examinations EX ON ST.student_id = EX.student_id AND SJ.subject_name = EX.subject_name
GROUP BY ST.student_id, ST.student_name, SJ.subject_name
ORDER BY ST.student_id
