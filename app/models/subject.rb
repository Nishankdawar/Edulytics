class Subject < ActiveRecord::Base
	belongs_to :teacher
	belongs_to :grade
	belongs_to :student
	has_many :questions #remove mapping
	has_many :tests
end
