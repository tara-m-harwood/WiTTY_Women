class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question # "Who wrote Pride & Prejudice?"
      t.text :options  # ["Jane Austin", "George Washington"]
      t.string :correct # "Jane Austin"
    end  
  end
end
