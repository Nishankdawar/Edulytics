class Question < ActiveRecord::Base
	has_many :tags, :through => :QuestionTagMappings
	has_many :QuestionTagMappings
	belongs_to :subject
	has_many :students, :through => :status
	has_many :status
	has_many :tests, :through => :TestQuestionMapping
	has_many :TestQuestionMappings
end
