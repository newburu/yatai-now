class ChangeScaleOfLocationsCoordinates < ActiveRecord::Migration[8.1]
  def up
    change_column :locations, :latitude, :decimal, precision: 10, scale: 6
    change_column :locations, :longitude, :decimal, precision: 10, scale: 6
  end

  def down
    change_column :locations, :latitude, :decimal, precision: 10, scale: 0
    change_column :locations, :longitude, :decimal, precision: 10, scale: 0
  end
end
