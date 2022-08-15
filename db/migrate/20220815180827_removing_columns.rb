class RemovingColumns < ActiveRecord::Migration[7.0]
  def change

    remove_column :reviews, :cleanliness, :string
    remove_column :reviews, :recommend, :string
  end
end
