class CreateQuizAnswer < ActiveRecord::Migration[5.1]
  def change
    create_table :quiz_answers do |t|
    	t.references 			:quiz_submission, 				index: true
    	t.references			:question
    	t.references			:option
    	t.integer				:score
    	t.timestamps
    end
  end
end
