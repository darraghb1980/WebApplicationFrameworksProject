class AddLongLatToUnits < ActiveRecord::Migration
  def self.up
    add_column :units, :latitude, :float
    add_column :units, :longitude, :float
    add_column :units, :gmaps, :boolean
  end

  def self.down
    remove_column :units, :gmaps
    remove_column :units, :longitude
    remove_column :units, :latitude
  end
end
