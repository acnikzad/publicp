class ChanginParks < ActiveRecord::Migration[7.0]
  def change
    rename_column :bathrooms, :park, :label
  end
end
