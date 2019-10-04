class Entry < Attendance
  has_one :exit, dependent: :destroy, foreign_key: :attendance_id
end