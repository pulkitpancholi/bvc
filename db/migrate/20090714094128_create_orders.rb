class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :user_id
      t.integer :billing_address_id
      t.integer :shipping_address_id
      t.integer :no_of_copies
      t.integer :no_of_pages
      t.string :job_name
      t.boolean :color_copy, :null => false, :default => false
      t.boolean :single_sided, :null => false, :default => true
      t.integer :pagesize_id
      t.boolean :bleeded, :default => false
      t.integer :papertype_id
      t.integer :papercolor_id
      t.boolean :collation, :null => false, :default => true
      t.integer :folding_id
      t.integer :stapling_id
      t.boolean :three_holes_drilled
      t.integer :bind_id
      t.boolean :hard_front_cover
      t.integer :hard_front_cover_material_id
      t.integer :hard_front_cover_color_id
      t.boolean :hard_front_cover_from_pdf
      t.boolean :hard_front_cover_single_sided
      t.boolean :hard_front_cover_coloured
      t.integer :hard_back_cover_id
      t.integer :hard_back_cover_material_id
      t.integer :hard_back_cover_color_id
      t.boolean :hard_back_cover_from_pdf
      t.boolean :hard_back_cover_single_sided
      t.boolean :hard_back_cover_coloured
      t.decimal :price_per_copy
      t.decimal :price_per_set
      t.decimal :price_of_finishing
      t.decimal :total_price

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
