class AddOwnerIdToUnit < ActiveRecord::Migration
  def self.up
    add_column :units, :owner_id, :integer
  end

  def self.down
    remove_column :units, :owner_id
  end
end
