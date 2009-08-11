class CreateHardCoverMaterials < ActiveRecord::Migration
  def self.up
    create_table :hard_cover_materials do |t|
      t.string :hard_cover_material_type

      t.timestamps
    end
  end

  def self.down
    drop_table :hard_cover_materials
  end
end
