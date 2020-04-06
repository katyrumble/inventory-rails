# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_06_052011) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assets", force: :cascade do |t|
    t.string "asset_tag", limit: 10
    t.string "serial_number", null: false
    t.bigint "category_id", null: false
    t.bigint "model_id", null: false
    t.string "primary_user", limit: 50
    t.bigint "location_id", null: false
    t.datetime "purchase_date"
    t.datetime "warranty_expiry"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_deleted", default: false, null: false
    t.index ["category_id"], name: "index_assets_on_category_id"
    t.index ["location_id"], name: "index_assets_on_location_id"
    t.index ["model_id"], name: "index_assets_on_model_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_deleted", default: false, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "address_line1", limit: 60
    t.string "address_line2", limit: 60
    t.string "city", limit: 50
    t.string "state", limit: 2
    t.string "zip_code", limit: 10
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_deleted", default: false, null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string "name", limit: 100, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_deleted", default: false, null: false
  end

  create_table "models", force: :cascade do |t|
    t.bigint "manufacturer_id", null: false
    t.string "name", limit: 100, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_deleted", default: false, null: false
    t.index ["manufacturer_id"], name: "index_models_on_manufacturer_id"
  end

  add_foreign_key "assets", "categories"
  add_foreign_key "assets", "locations"
  add_foreign_key "assets", "models"
  add_foreign_key "models", "manufacturers"
end
