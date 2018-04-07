class Quizsubmisstion < ApplicationRecord
	belongs_to 	:user
	belongs_to	:quiz
	has_many	:quiz_anwsers
end