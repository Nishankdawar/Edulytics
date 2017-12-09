class TeacherGradeMapping < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :grade
end
