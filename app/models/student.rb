class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :trackable, :validatable

  has_many	:quiz_submissions
	accepts_nested_attributes_for :quiz_submissions
end
