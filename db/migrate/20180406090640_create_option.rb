class CreateOption < ActiveRecord::Migration[5.1]
  def change
    create_table :options do |t|
    	t.references		:question,				index: true
    	t.string			:detail
    	t.integer			:point
    	t.integer			:numerical_order
    	t.timestamps
    end
  end
end
