class Exit < Attendance
  belongs_to :entry, foreign_key: :attendance_id, optional: true
end