class ChangeUsersTable < ActiveRecord::Migration[6.0]
  def change
    change_table :questions do |t|
      t.remove :score, :user_answer
    end
  end
end
