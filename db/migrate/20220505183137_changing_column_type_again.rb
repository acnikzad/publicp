class ChangingColumnTypeAgain < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :user_id, :string
  end
end
