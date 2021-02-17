class CreateUserquestionsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :userquestions do |t|
      t.references :user
      t.references :question
      t.boolean :correct
    end
  end
end
