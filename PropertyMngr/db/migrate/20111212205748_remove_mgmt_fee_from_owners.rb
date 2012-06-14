class RemoveMgmtFeeFromOwners < ActiveRecord::Migration
  def self.up
    remove_column :owners, :management_fee
    remove_column :owners, :status
  end

  def self.down
    add_column :owners, :status, :string
    add_column :owners, :management_fee, :integer
  end
end
