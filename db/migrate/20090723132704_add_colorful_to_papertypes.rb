class AddColorfulToPapertypes < ActiveRecord::Migration
  def self.up
    add_column :papertypes, :colorful, :boolean, :null => false, :default => false
  end

  def self.down
    remove_column :papertypes, :colorful
  end
end
