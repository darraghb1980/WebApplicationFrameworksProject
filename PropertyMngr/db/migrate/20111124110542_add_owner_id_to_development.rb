class AddOwnerIdToDevelopment < ActiveRecord::Migration
  def self.up
    add_column :developments, :owner_id, :integer
  end

  def self.down
    remove_column :developments, :owner_id
  end
end
