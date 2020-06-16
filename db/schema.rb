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

ActiveRecord::Schema.define(version: 2020_06_12_152042) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "autocompletes", force: :cascade do |t|
    t.string "address"
    t.integer "street_number"
    t.string "locality"
    t.string "route"
    t.string "administrative_area_level_1"
    t.string "country"
    t.integer "postal_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "fsa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.string "fsa"
    t.string "city"
    t.string "delivery_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fsas", force: :cascade do |t|
    t.string "fsacode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "polygons", force: :cascade do |t|
    t.string "fsa"
    t.polygon "fsa_polygon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "delivery_id"
  end

  create_table "postals", force: :cascade do |t|
    t.string "postalcode"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "fsa_id"
  end

  create_table "shapes", force: :cascade do |t|
    t.string "fsa"
    t.string "point_one_x"
    t.string "point_one_y"
    t.string "point_two_x"
    t.string "point_two_y"
    t.string "point_three_x"
    t.string "point_three_y"
    t.string "point_four_x"
    t.string "point_four_y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
