class CreateSchool < ActiveRecord::Migration[5.1]
  def change
    create_table :schools do |t|
    	t.string 						:name
    	t.integer						:number_student
    	t.timestamps
    end
  end
end
