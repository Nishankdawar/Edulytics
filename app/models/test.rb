class Test < ActiveRecord::Base
	belongs_to :subject
	has_many :questions, :through => :TestQuestionMappings
	has_many :TestQuestionMappings
	has_many :students, :through => :status
	
end
