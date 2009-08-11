class CreatePagesizes < ActiveRecord::Migration
  def self.up
    create_table :pagesizes do |t|
      t.string :page_size

      t.timestamps
    end
  end

  def self.down
    drop_table :pagesizes
  end
end
