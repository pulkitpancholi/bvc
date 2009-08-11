class CreateHardBackCovers < ActiveRecord::Migration
  def self.up
    create_table :hard_back_covers do |t|
      t.string :hard_back_cover_type

      t.timestamps
    end
  end

  def self.down
    drop_table :hard_back_covers
  end
end
