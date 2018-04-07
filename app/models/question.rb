class Question < ApplicationRecord
	has_many 	:options
	belongs_to 	:quiz
	has_many	:quiz_answers
end
