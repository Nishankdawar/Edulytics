class TestQuestionMapping < ActiveRecord::Base
	belongs_to :test
	belongs_to :question
end
