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

ActiveRecord::Schema.define(:version => 20130325044829) do

  create_table "coin_attribute_types", :force => true do |t|
    t.text     "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "coin_attributes", :force => true do |t|
    t.integer  "coin_id"
    t.integer  "coin_attribute_type_id"
    t.text     "coin_attribute_value"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "coin_values", :force => true do |t|
    t.string   "name"
    t.float    "value"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "coins", :force => true do |t|
    t.string   "name"
    t.integer  "start_year"
    t.integer  "end_year"
    t.text     "description"
    t.integer  "coin_value_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "mints", :force => true do |t|
    t.string   "name"
    t.string   "symbol"
    t.boolean  "always_present"
    t.text     "comments"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end
