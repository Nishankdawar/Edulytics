class Grade < ActiveRecord::Base
	
	has_many :subjects
	has_many :students
	has_many :teacher, :through => :TeacherGradeMapping
	has_many :TeacherGradeMapping
	
end
