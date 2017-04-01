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

ActiveRecord::Schema.define(version: 20170330074730) do

  create_table "base_cars", force: :cascade do |t|
    t.string   "style"
    t.integer  "status"
    t.float    "base_price"
    t.integer  "year"
    t.string   "NO"
    t.integer  "standard_id"
    t.integer  "brand_id"
    t.integer  "car_model_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["brand_id"], name: "index_base_cars_on_brand_id"
    t.index ["car_model_id"], name: "index_base_cars_on_car_model_id"
    t.index ["standard_id"], name: "index_base_cars_on_standard_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.integer  "status"
    t.string   "pinyin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "brands_standards", id: false, force: :cascade do |t|
    t.integer "standard_id", null: false
    t.integer "brand_id",    null: false
  end

  create_table "car_models", force: :cascade do |t|
    t.string   "name"
    t.integer  "status"
    t.integer  "standard_id"
    t.integer  "brand_id"
    t.integer  "firm_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["brand_id"], name: "index_car_models_on_brand_id"
    t.index ["firm_id"], name: "index_car_models_on_firm_id"
    t.index ["standard_id"], name: "index_car_models_on_standard_id"
  end

  create_table "firms", force: :cascade do |t|
    t.string   "name"
    t.integer  "brand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_firms_on_brand_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image"
    t.integer  "_type"
    t.integer  "position"
    t.integer  "width"
    t.integer  "height"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_type", "owner_id"], name: "index_photos_on_owner_type_and_owner_id"
  end

  create_table "standards", force: :cascade do |t|
    t.string   "name"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
