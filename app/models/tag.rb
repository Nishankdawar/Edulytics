class Tag < ActiveRecord::Base
	has_many :questions, :through => :QuestionTagMappings
	has_many :QuestionTagMappings
end
