class CreateBinds < ActiveRecord::Migration
  def self.up
    create_table :binds do |t|
      t.string :bind_type

      t.timestamps
    end
  end

  def self.down
    drop_table :binds
  end
end
