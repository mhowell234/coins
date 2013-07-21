# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130721044725) do

  create_table "attribute_types", :force => true do |t|
    t.text     "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "coin_attributes", :force => true do |t|
    t.integer  "coin_id"
    t.integer  "attribute_type_id"
    t.text     "value"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "coin_value_attributes", :force => true do |t|
    t.integer  "coin_value_id"
    t.integer  "attribute_type_id"
    t.string   "value"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "coin_values", :force => true do |t|
    t.string   "name"
    t.float    "value"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "coin_years", :force => true do |t|
    t.integer  "coin_id"
    t.integer  "year"
    t.text     "additional_info"
    t.integer  "is_gold"
    t.integer  "is_silver"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "coins", :force => true do |t|
    t.string   "name"
    t.integer  "start_year"
    t.integer  "end_year"
    t.text     "description"
    t.integer  "coin_value_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "extension"
  end

  create_table "compositions", :force => true do |t|
    t.integer  "mint_coin_id"
    t.integer  "precious_metal_id"
    t.float    "percentage"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "mint_coin_attributes", :force => true do |t|
    t.integer  "attribute_type_id"
    t.string   "value"
    t.integer  "mint_coin_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "mint_coins", :force => true do |t|
    t.integer  "coin_id"
    t.integer  "year"
    t.text     "year_grouping"
    t.integer  "mint_id"
    t.text     "mint_grouping"
    t.integer  "number_minted"
    t.integer  "number_proof_minted"
    t.boolean  "is_gold"
    t.boolean  "is_silver"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "mint_dates", :force => true do |t|
    t.integer  "mint_id"
    t.integer  "start_year"
    t.integer  "end_year"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "mints", :force => true do |t|
    t.string   "name"
    t.string   "symbol"
    t.boolean  "always_present"
    t.text     "comments"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "origins", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "description"
  end

  create_table "our_coin_thumbnails", :force => true do |t|
    t.integer  "our_coin_id"
    t.string   "file_name"
    t.string   "caption"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "our_coins", :force => true do |t|
    t.integer  "mint_coin_id"
    t.float    "price_paid"
    t.integer  "origin_id"
    t.date     "origin_date"
    t.boolean  "is_silver"
    t.boolean  "is_gold"
    t.boolean  "is_proof"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "photos", :force => true do |t|
    t.integer  "coin_id"
    t.string   "file_name"
    t.string   "caption"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "precious_metals", :force => true do |t|
    t.string   "name"
    t.string   "symbol"
    t.string   "unit"
    t.float    "conversion_factor"
    t.float    "price_per_unit"
    t.float    "price_per_gram"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "rating_agencies", :force => true do |t|
    t.string   "name"
    t.string   "full_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sheldon_rating_categories", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "start"
    t.integer  "end"
    t.integer  "special_order"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "sheldon_rating_scales", :force => true do |t|
    t.string   "title"
    t.integer  "sheldon_rating_category_id"
    t.float    "value"
    t.text     "description"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "thumbnails", :force => true do |t|
    t.integer  "coin_id"
    t.string   "file_name"
    t.string   "caption"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "valuations", :force => true do |t|
    t.integer  "mint_coin_id"
    t.integer  "rating_agency_id"
    t.integer  "year"
    t.integer  "sheldon_rating_scale_id"
    t.float    "value"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

end
