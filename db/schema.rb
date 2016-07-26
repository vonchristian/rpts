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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160726101040) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string   "house_number"
    t.string   "street"
    t.string   "barangay"
    t.string   "municipality"
    t.string   "province"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["addressable_id"], name: "index_addresses_on_addressable_id", using: :btree
    t.index ["addressable_type"], name: "index_addresses_on_addressable_type", using: :btree
  end

  create_table "assessments", force: :cascade do |t|
    t.integer  "property_id"
    t.boolean  "taxable"
    t.decimal  "adjusted_market_value"
    t.decimal  "assessment_level"
    t.decimal  "assessed_value"
    t.decimal  "previous_assessed_value"
    t.decimal  "previous_adjusted_market_value"
    t.date     "effectivity"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["property_id"], name: "index_assessments_on_property_id", using: :btree
  end

  create_table "classifications", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.decimal  "percent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "land_details", force: :cascade do |t|
    t.integer  "property_id"
    t.string   "classification"
    t.string   "sub_class"
    t.string   "actual_user"
    t.decimal  "area"
    t.decimal  "unit_value"
    t.decimal  "market_value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["property_id"], name: "index_land_details_on_property_id", using: :btree
  end

  create_table "machinery_details", force: :cascade do |t|
    t.string   "description"
    t.integer  "property_id"
    t.string   "brand_and_serial_number"
    t.string   "capacity"
    t.date     "date_acquired"
    t.integer  "condition_when_acquired"
    t.decimal  "economic_life_estimated"
    t.decimal  "economic_life_remaining"
    t.date     "date_of_installation"
    t.date     "date_of_operation"
    t.text     "remarks"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["property_id"], name: "index_machinery_details_on_property_id", using: :btree
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text     "content"
    t.string   "searchable_type"
    t.integer  "searchable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id", using: :btree
  end

  create_table "properties", force: :cascade do |t|
    t.decimal  "land_area"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "type"
    t.string   "arp_number"
    t.integer  "user_id"
    t.string   "pin_number"
    t.index ["type"], name: "index_properties_on_type", using: :btree
    t.index ["user_id"], name: "index_properties_on_user_id", using: :btree
  end

  create_table "rea_property_tax_rates", force: :cascade do |t|
    t.decimal  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "structural_characteristics", force: :cascade do |t|
    t.integer  "property_id"
    t.string   "foundation"
    t.string   "columns"
    t.string   "beams"
    t.string   "truss_frame"
    t.string   "roof"
    t.string   "exterior_wall_front"
    t.string   "exterior_walls_rear"
    t.string   "exterior_wall_right"
    t.string   "exterior_walls_left"
    t.string   "exterior_walls_inside"
    t.string   "flooring"
    t.string   "floor_finish"
    t.string   "structural_type"
    t.string   "classification"
    t.string   "building_permit"
    t.string   "afe"
    t.integer  "height_or_storey"
    t.integer  "number_of_rooms"
    t.string   "stairs"
    t.string   "windows"
    t.string   "partition"
    t.string   "partition_finish"
    t.string   "door"
    t.string   "electrical"
    t.string   "plumbing_or_sewer"
    t.string   "paintings"
    t.string   "ceiling"
    t.string   "ceiling_finish"
    t.date     "date_cosntructed"
    t.date     "date_completed"
    t.date     "date_occupied"
    t.string   "area_of_ground_floor"
    t.string   "total_building_area"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["property_id"], name: "index_structural_characteristics_on_property_id", using: :btree
  end

  create_table "tax_declaration_numbers", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "type"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "mobile"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "full_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "assessments", "properties"
  add_foreign_key "land_details", "properties"
  add_foreign_key "machinery_details", "properties"
  add_foreign_key "structural_characteristics", "properties"
end
