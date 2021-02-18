class ChangeFixUserTable < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.remove :score, :user_answer
    end
  end
end
