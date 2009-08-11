class CreatePapertypes < ActiveRecord::Migration
  def self.up
    create_table :papertypes do |t|
      t.string  :paper_type      
      
      t.timestamps
    end
  end

  def self.down
    drop_table :papertypes
  end
end
