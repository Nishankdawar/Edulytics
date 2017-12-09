class Teacher < ActiveRecord::Base
	has_many :students
	has_many :grades, :through => :TeacherGradeMapping
	has_many :subjects
	has_many :TeacherGradeMappings
end
