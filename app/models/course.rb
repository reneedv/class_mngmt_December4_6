class Course < ActiveRecord::Base
  #belongs_to :student, class_name: Student, foreign_key: :student_id

  has_many :course_registrations
  has_many :students, through: :course_registrations

end
