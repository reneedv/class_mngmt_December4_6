class Student < ActiveRecord::Base
  has_many :courses, class_name: Course, foreign_key: :student_id
end
