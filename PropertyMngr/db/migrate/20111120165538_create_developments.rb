class CreateDevelopments < ActiveRecord::Migration
  def self.up
    create_table :developments do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :developments
  end
end
