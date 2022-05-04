class CreateBathrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :bathrooms do |t|
      t.string :park
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
