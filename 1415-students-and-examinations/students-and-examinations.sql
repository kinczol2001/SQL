SELECT
  s.student_id,
  s.student_name,
  sub.subject_name,
  COUNT(e.student_id) AS attended_exams
FROM Students AS s
CROSS JOIN Subjects AS sub                 -- wszystkie pary student × przedmiot
LEFT JOIN Examinations AS e                -- policzymy tylko dopasowane podejścia
  ON e.student_id = s.student_id
 AND e.subject_name = sub.subject_name
GROUP BY
  s.student_id, s.student_name, sub.subject_name
ORDER BY
  s.student_id, sub.subject_name;
