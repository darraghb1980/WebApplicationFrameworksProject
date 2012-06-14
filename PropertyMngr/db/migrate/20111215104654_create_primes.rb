class CreatePrimes < ActiveRecord::Migration
  def self.up
    create_table :primes do |t|
      t.integer :primenum

      t.timestamps
    end
  end

  def self.down
    drop_table :primes
  end
end
