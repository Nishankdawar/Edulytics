class Student < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :grade
	has_many :subjects
	has_many :questions, :through => :status
	has_many :status
	has_many :tests, :through => :status
	
end
