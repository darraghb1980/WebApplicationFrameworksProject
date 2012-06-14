class CreateOwners < ActiveRecord::Migration
  def self.up
    create_table :owners do |t|
      t.string :firstname
      t.string :lastname
      t.string :contact_number
      t.integer :management_fee
      t.string :status
	t.string :email


      t.timestamps
    end
  end

  def self.down
    drop_table :owners
  end
end
