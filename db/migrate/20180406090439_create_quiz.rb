class CreateQuiz < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
    	t.text							:intro
    	t.datetime					:start_date
    	t.datetime  				:end_date
    	t.boolean						:published
    	t.timestamps
    end
  end
end
