class Question < ApplicationRecord
	belongs_to 	:question
	has_many	:quiz_answers
end
