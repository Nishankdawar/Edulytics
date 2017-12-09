class Test < ActiveRecord::Base
	belongs_to :subject
	has_many :questions, :through => :TestQuestionMapping
	has_many :TestQuestionMappings
	
end
