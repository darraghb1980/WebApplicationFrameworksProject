class RemoveAddress2FromUnits < ActiveRecord::Migration
  def self.up
    remove_column :units, :address2
    remove_column :units, :address3
    remove_column :units, :town
    remove_column :units, :county
  end

  def self.down
    add_column :units, :county, :string
    add_column :units, :town, :string
    add_column :units, :address3, :string
    add_column :units, :address2, :string
  end
end
