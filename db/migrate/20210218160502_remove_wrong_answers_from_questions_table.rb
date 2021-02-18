class RemoveWrongAnswersFromQuestionsTable < ActiveRecord::Migration[6.0]
  def change
    change_table :questions do |t|
      t.remove :wrong_answer1, :wrong_answer2, :wrong_answer3
    end
  end
end
