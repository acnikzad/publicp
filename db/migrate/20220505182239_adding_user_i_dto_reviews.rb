class AddingUserIDtoReviews < ActiveRecord::Migration[7.0]
  def change
    rename_column :reviews, :name, :user_id
  end
end
