class QuizSubmission < ApplicationRecord
	belongs_to 	:student
	belongs_to 	:school
	belongs_to	:quiz
	has_many	:quiz_anwsers
	enum level: { "" }
end