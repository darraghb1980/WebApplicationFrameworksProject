class AddDevelopmentIdToUnit < ActiveRecord::Migration
  def self.up
    add_column :units, :development_id, :integer
  end

  def self.down
    remove_column :units, :development_id
  end
end
