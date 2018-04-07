class CreateStudent < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
    	t.references 							:school, 					index: true
    	t.string									:name
    	t.string									:email
    	t.string									:class
    	t.integer									:level
    	t.timestamps
    end
  end
end
