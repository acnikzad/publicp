class AddDecimalsToCoordinates < ActiveRecord::Migration[7.0]
  def change
    change_column :bathrooms, :latitude, :decimal, precision: 14, scale: 12
    change_column :bathrooms, :latitude, :decimal, precision: 15, scale: 12
  end
end
