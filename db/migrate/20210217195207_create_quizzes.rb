class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quiz do |t|
      t.references :user # from user table
      t.string :date
      t.integer :score
    end 
  end
end
