class CreateQuizSubmission < ActiveRecord::Migration[5.1]
  def change
    create_table :quiz_submissions do |t|
    	t.references		:quiz,				index: true
    	t.references 							:school, 					index: true
    	t.references 							:student, 				index: true
    	t.string								:name
    	t.string								:class_name
    	t.integer								:level
    	t.integer			:total_score
    	t.boolean			:is_complete
    	t.timestamps
    end
  end
end
