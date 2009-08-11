# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090723132704) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "salt"
    t.string   "crypted_password"
    t.string   "role"
    t.string   "modules"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", :force => true do |t|
    t.integer  "user_id",                               :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "zip_code"
    t.string   "country"
    t.string   "phone"
    t.boolean  "residential_address", :default => true, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "binds", :force => true do |t|
    t.string   "bind_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "colors", :force => true do |t|
    t.string   "color_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foldings", :force => true do |t|
    t.string   "folding_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hard_back_covers", :force => true do |t|
    t.string   "hard_back_cover_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hard_cover_materials", :force => true do |t|
    t.string   "hard_cover_material_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.integer  "billing_address_id"
    t.integer  "shipping_address_id"
    t.integer  "no_of_copies"
    t.integer  "no_of_pages"
    t.string   "job_name"
    t.boolean  "color_copy",                                                                 :default => false, :null => false
    t.boolean  "single_sided",                                                               :default => true,  :null => false
    t.integer  "pagesize_id"
    t.boolean  "bleeded",                                                                    :default => false
    t.integer  "papertype_id"
    t.integer  "papercolor_id"
    t.boolean  "collation",                                                                  :default => true,  :null => false
    t.integer  "folding_id"
    t.integer  "stapling_id"
    t.boolean  "three_holes_drilled"
    t.integer  "bind_id"
    t.boolean  "hard_front_cover"
    t.integer  "hard_front_cover_material_id"
    t.integer  "hard_front_cover_color_id"
    t.boolean  "hard_front_cover_from_pdf"
    t.boolean  "hard_front_cover_single_sided"
    t.boolean  "hard_front_cover_coloured"
    t.integer  "hard_back_cover_id"
    t.integer  "hard_back_cover_material_id"
    t.integer  "hard_back_cover_color_id"
    t.boolean  "hard_back_cover_from_pdf"
    t.boolean  "hard_back_cover_single_sided"
    t.boolean  "hard_back_cover_coloured"
    t.integer  "price_per_copy",                :limit => 10, :precision => 10, :scale => 0
    t.integer  "price_per_set",                 :limit => 10, :precision => 10, :scale => 0
    t.integer  "price_of_finishing",            :limit => 10, :precision => 10, :scale => 0
    t.integer  "total_price",                   :limit => 10, :precision => 10, :scale => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagesizes", :force => true do |t|
    t.string   "page_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "papertypes", :force => true do |t|
    t.string   "paper_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "colorful",   :default => false, :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "staplings", :force => true do |t|
    t.string   "stapling_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                                  :null => false
    t.string   "first_name",                             :null => false
    t.string   "last_name",                              :null => false
    t.string   "email",                                  :null => false
    t.boolean  "admin",               :default => false, :null => false
    t.string   "crypted_password",                       :null => false
    t.string   "password_salt",                          :null => false
    t.string   "persistence_token",                      :null => false
    t.string   "single_access_token",                    :null => false
    t.string   "perishable_token",                       :null => false
    t.integer  "login_count",         :default => 0,     :null => false
    t.integer  "failed_login_count",  :default => 0,     :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
