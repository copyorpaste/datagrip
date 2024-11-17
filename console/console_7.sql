

SELECT COUNT(*) AS total
FROM operation_attendance_record
WHERE deleted = 0
  AND (clock_in_time BETWEEN ? AND ? AND clock_in_status = ? AND status = ? AND user_id = ?)
  AND tenant_id = 159