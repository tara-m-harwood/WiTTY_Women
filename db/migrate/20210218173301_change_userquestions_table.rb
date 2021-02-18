class ChangeUserquestionsTable < ActiveRecord::Migration[6.0]
  def change
    change_table :userquestions do |t|
      t.remove :correct
      t.string :user_answer
    end  
  end
end
