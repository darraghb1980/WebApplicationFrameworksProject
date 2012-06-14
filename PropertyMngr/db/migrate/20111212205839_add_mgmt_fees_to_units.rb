class AddMgmtFeesToUnits < ActiveRecord::Migration
  def self.up
    add_column :units, :management_fee, :integer
    add_column :units, :status, :string
  end

  def self.down
    remove_column :units, :status
    remove_column :units, :management_fee
  end
end
