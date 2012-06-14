class CreateUnits < ActiveRecord::Migration
  def self.up
    create_table :units do |t|
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :town
      t.string :county

      t.timestamps
    end
  end

  def self.down
    drop_table :units
  end
end
