class CreateQuestion < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
    	t.references		:quiz,				index: true
    	t.string 			:title
    	t.attachment		:image
    	t.integer 			:question_type
    	t.integer			:numerical_order
    	t.timestamps
    end
  end
end
