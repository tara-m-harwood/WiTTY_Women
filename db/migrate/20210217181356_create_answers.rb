class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answer do |t|
      t.references :question # from question table
      t.references :user # from user table
      t.string :response # "Jane Austin"
    end 
  end
end