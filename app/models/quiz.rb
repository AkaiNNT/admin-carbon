class Quiz < ApplicationRecord
	has_many :questions
	has_many :quiz_submissions
end
