class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer  :user_id, :null => false
      t.string   :first_name
      t.string   :last_name
      t.string   :company_name
      t.string   :address1
      t.string   :address2
      t.string   :city
      t.string   :zip_code
      t.string   :country
      t.string   :phone
      t.boolean  :residential_address, :null => false, :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
