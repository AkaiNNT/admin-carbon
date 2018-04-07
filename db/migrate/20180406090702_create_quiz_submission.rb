class CreateQuizSubmission < ActiveRecord::Migration[5.1]
  def change
    create_table :quiz_submissions do |t|
    	t.references		:user, 				index: true
    	t.references		:quiz,				index: true
    	t.integer			:total_score
    	t.boolean			:is_complete
    	t.timestamps
    end
  end
end
