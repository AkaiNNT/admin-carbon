class QuizAnwser < ApplicationRecord
	belongs_to 	:quiz_submission
	belongs_to	:question
	belongs_to	:option
end