class ChanginShortForm < ActiveRecord::Migration[7.0]
  def change
    rename_column :bathrooms, :latitude, :lat
    rename_column :bathrooms, :longitude, :lng
  end
end
