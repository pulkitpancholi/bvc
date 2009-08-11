class CreateStaplings < ActiveRecord::Migration
  def self.up
    create_table :staplings do |t|
      t.string :stapling_type

      t.timestamps
    end
  end

  def self.down
    drop_table :staplings
  end
end
