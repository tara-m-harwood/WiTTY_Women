class CreateTestsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.references :user
      t.references :question
      t.string :user_answer
    end  
  end
end
