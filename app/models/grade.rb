class Grade < ActiveRecord::Base
	belongs_to :teacher
	has_many :subjects
	has_many :students
	
end
