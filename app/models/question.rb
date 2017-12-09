class Question < ActiveRecord::Base
	has_many :tags
	belongs_to :subject
	has_many :students, :through => :status
	has_many :status
	has_many :test, :through => :TestQuestionMapping
	has_many :TestQuestionMappings
end
