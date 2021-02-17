class CreateQuestionsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :quote
      t.string :right_answer
      t.string :wrong_answer1
      t.string :wrong_answer2
      t.string :wrong_answer3
    end
  end
end
